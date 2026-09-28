#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)

# The verb half. Each route that fires is kept by name, because under a record
# saying yes the pass turns on where that route puts things.
MANAGER='brew|port|apt|apt-get|yum|dnf|zypper|pacman|apk|snap|choco|winget|scoop|sdk|gem|cargo|go|pipx|uv[[:space:]]+tool|asdf|mise|rustup|nvm'
ROUTES=$(echo "$CMD" | grep -oE "(^|[^[:alnum:]_.-])($MANAGER)[[:space:]]+(install|add|use|tap)([[:space:]]|$)" | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]]+(install|add|use|tap).*$//; s/[[:space:]]+/ /g')
[ -n "$ROUTES" ] && BEYOND=yes
GLOBALS=$(echo "$CMD" | grep -oE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+(install|i|add)([[:space:]].*)?[[:space:]](-g|--global)([[:space:]]|$)' | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]].*$//')
[ -n "$GLOBALS" ] && BEYOND=yes
GLOBALS2=$(echo "$CMD" | grep -oE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+global[[:space:]]+(add|install)([[:space:]]|$)' | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]].*$//')
[ -n "$GLOBALS2" ] && BEYOND=yes
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])pip3?[[:space:]]+install([[:space:]]|$)' && { BEYOND=yes; ROUTES="$ROUTES
pip"; }

# The list above catches the verb. These catch the outcome, because the same
# binary lands on the machine whether a package manager put it there or a build
# flag did. BINDIR is where things end up when they are meant to outlive the
# project.
BINDIR='(/usr/local/(bin|sbin)|/usr/(bin|sbin)|/opt/|(~|\$HOME)/(\.local/bin|bin|go/bin)|\$\(go env GOPATH\)/bin|\$GOBIN|\$GOPATH/bin)'
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])sudo[[:space:]]" && { BEYOND=yes; SUDO=yes; }
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])(cp|mv|install|ln)[[:space:]][^|;]*$BINDIR" && { BEYOND=yes; WRITES=yes; }
echo "$CMD" | grep -qE "\-o[[:space:]]*[^[:space:]]*$BINDIR" && { BEYOND=yes; WRITES=yes; }
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])make([[:space:]]+[^[:space:]]+)*[[:space:]]+install([[:space:]]|$)" && { BEYOND=yes; MAKEINST=yes; }
echo "$CMD" | grep -qE "(curl|wget)[^|]*\|[[:space:]]*(sudo[[:space:]]+)?(ba)?sh([[:space:]]|$)" && { BEYOND=yes; PIPED=yes; }
echo "$CMD" | grep -qE '(ba)?sh[[:space:]]+-c.*[$]\((curl|wget)' && { BEYOND=yes; PIPED=yes; }
echo "$CMD" | grep -qE "<\([[:space:]]*(curl|wget)" && { BEYOND=yes; PIPED=yes; }
[ "${BEYOND:-no}" = "yes" ] || exit 0

# Only now is the record read: this hook runs on every Bash call, and a command
# that stays inside the repository never gets here. The record is read off the
# default branch as last fetched, never off the working tree, through the same
# program hooks/session-start.sh prints it with. Every failure below is a block
# and names its cause; the one pass is a record saying yes whose places name
# every place this command lands.
HERE=$(cd "$(dirname "$0")" && pwd)
RECORD=$("$HERE/../bin/devloop-install-record" "$PROJECT_DIR" 2>&1)
if [ $? -ne 0 ]; then
  CAUSE=$(printf '%s\n' "$RECORD" | sed -n 's/^cause: //p' | head -1)
  [ -n "$CAUSE" ] || CAUSE="the record could not be read: ${RECORD:-the reader answered nothing}"
  REF="the default branch as last fetched"
else
  REF=$(printf '%s\n' "$RECORD" | sed -n 's/^ref: //p' | head -1)
  TOOLS=$(printf '%s\n' "$RECORD" | sed -n 's/^tools: //p' | head -1)
  PLACES=$(printf '%s\n' "$RECORD" | sed -n 's/^place: //p')
  if [ "$TOOLS" = "no" ]; then
    CAUSE="the record says no (install-tools: no on $REF)"
  elif [ "${SUDO:-no}" = "yes" ]; then
    CAUSE="it needs sudo, which stays the user's under every answer"
  elif [ "${PIPED:-no}" = "yes" ]; then
    CAUSE="it pipes a script from the network into a shell, which stays the user's under every answer"
  else
    # Where it lands. A route named in the command is asked on this machine,
    # for the three routes shared/backed-command.md names a path for; a path
    # written in the command is taken as written; anything else cannot be read
    # off the command and stays blocked, as today.
    DESTS=""
    UNREAD=""
    gobin() {
      local b p
      b=$(go env GOBIN 2>/dev/null); p=$(go env GOPATH 2>/dev/null); p="${p%%:*}"
      if [ -n "$b" ]; then echo "$b"; elif [ -n "$p" ]; then echo "$p/bin"; fi
    }
    while IFS= read -r R; do
      [ -n "$R" ] || continue
      case "$R" in
        brew) P=$(brew --prefix 2>/dev/null); if [ -n "$P" ]; then DESTS="$DESTS
$P/bin"; else UNREAD="$UNREAD; brew (brew --prefix did not answer)"; fi ;;
        go) P=$(gobin); if [ -n "$P" ]; then DESTS="$DESTS
$P"; else UNREAD="$UNREAD; go (go env did not answer)"; fi ;;
        npm) P=$(npm prefix -g 2>/dev/null); if [ -n "$P" ]; then DESTS="$DESTS
$P/bin"; else UNREAD="$UNREAD; npm (npm prefix -g did not answer)"; fi ;;
        *) UNREAD="$UNREAD; $R (where it puts things is not read off this machine by this guard)" ;;
      esac
    done <<< "$(printf '%s\n%s\n%s\n' "$ROUTES" "$GLOBALS" "$GLOBALS2" | grep -v '^$' | sort -u)"
    if [ "${WRITES:-no}" = "yes" ]; then
      while IFS= read -r D; do
        [ -n "$D" ] || continue
        case "$D" in
          '$(go env GOPATH)/bin'*|'$GOPATH/bin'*|'$GOBIN'*) P=$(gobin); if [ -n "$P" ]; then DESTS="$DESTS
$P"; else UNREAD="$UNREAD; $D (go env did not answer)"; fi ;;
          *) DESTS="$DESTS
$D" ;;
        esac
      done <<< "$(echo "$CMD" | grep -oE "$BINDIR[^[:space:];|&)\"']*")"
    fi
    [ "${MAKEINST:-no}" = "yes" ] && UNREAD="$UNREAD; make install (its destination is not in the command)"
    UNNAMED=""
    while IFS= read -r D; do
      [ -n "$D" ] || continue
      N="$D"
      case "$N" in
        '$HOME'/*|'$HOME') N="~${N#\$HOME}" ;;
        '${HOME}'/*|'${HOME}') N="~${N#\$\{HOME\}}" ;;
        "$HOME"/*|"$HOME") N="~${N#"$HOME"}" ;;
      esac
      HIT=no
      while IFS= read -r P; do
        [ -n "$P" ] || continue
        P="${P%/}"
        case "$N" in "$P"|"$P"/*) HIT=yes ;; esac
      done <<< "$PLACES"
      [ "$HIT" = yes ] || UNNAMED="$UNNAMED $N"
    done <<< "$DESTS"
    if [ -n "$UNREAD" ]; then
      CAUSE="where it lands cannot be read here${UNREAD}; a place the record does not name stays blocked"
    elif [ -n "$UNNAMED" ]; then
      CAUSE="it lands in$UNNAMED, which the record does not name; the record names: $(printf '%s\n' "$PLACES" | tr '\n' ' ' | sed 's/ $//')"
    elif [ -z "$(printf '%s' "$DESTS" | tr -d '\n')" ]; then
      CAUSE="where it lands could not be read off the command"
    else
      exit 0 # every destination named: the record opens it
    fi
  fi
fi

echo "Blocked: this installs outside the repository. The install record does not open it: $CAUSE. The record is the section \"## Install permission\" of docs/agents/environment.md on the default branch as last fetched ($REF), never the working tree, so a change to it counts once it has landed there and been fetched; where it says yes, the guard passes only a command whose destination is a place the record names, and it passes nothing under sudo and no script piped from the network. Under a block the install is the user's to run: their yes to this one command authorises them running it, not you performing it, and the record is the only thing that does that. Say in one line what it installs and what it unblocks, give them the exact command - backed first, by the vendor's own installation line or by the path in it resolving, because an organisation name is not a module path - and say both ways it can go at the same time: this picks up once the tool is at the path that command writes to, which is what their word gets checked against rather than command -v, since that finds an older copy from anywhere on PATH - nothing moves here until they say it has run - and if they decline, that is an answer too. What a decline costs depends on what the tool was for - a check class becomes skipped with that reason, or the part of the task that needs it cannot be built - so say which, and carry on rather than stopping. A block is not a decline: with nobody there, the issue or the skip reason carries the cause named above, not a decline. If it only looked like an install — a project-local dependency, a virtual environment — say so and let them decide." >&2
exit 2
