#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0
[ -d "docs/agents" ] || exit 0

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || exit 0

DEFAULT=$(git symbolic-ref --short refs/remotes/origin/HEAD 2>/dev/null)
DEFAULT="${DEFAULT#origin/}"
if [ -z "$DEFAULT" ]; then
  for c in main master; do
    if git show-ref --verify --quiet "refs/heads/$c"; then DEFAULT="$c"; break; fi
  done
fi
[ -n "$DEFAULT" ] || exit 0
[ "$BRANCH" = "$DEFAULT" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON and takes the command apart as the shell runs it, since 12 October
# 2026; every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)

# The index of git's command among the words W, from the index of git; 1 on
# the exit where none stands. Between git and its command may stand git's own
# options, and since 6 October 2026 they are read over: -C <path> and -c
# <name>=<value>, with or without a space; the six that take a value of
# their own, --git-dir, --work-tree, --namespace, --super-prefix,
# --config-env and --exec-path; any other --option, with or without =value;
# and -p and -P. A word that is no option is git's command, as log is in git
# log --grep commit, so commit and push are read only as git's command. Until
# then git -C <directory> commit passed unseen, measured 5 October 2026.
git_command() {
  local j="$1" w
  while :; do
    j=$((j + 1)); [ "$j" -lt "${#W[@]}" ] || return 1
    w="${W[$j]}"
    case "$w" in
      -C|-c|--git-dir|--work-tree|--namespace|--super-prefix|--config-env|--exec-path) j=$((j + 1)) ;;
      -C*|-c*|--*|-p|-P) ;;
      *) echo "$j"; return 0 ;;
    esac
  done
}
case "$TOOL" in
  Edit|Write|MultiEdit)
    FILE=$(printf '%s\n' "$INPUT" | sed -n 's/^file: //p' | head -1)
    case "$FILE" in
      /*) case "$FILE" in "$PROJECT_DIR"/*) ;; *) exit 0;; esac;;
    esac
    MSG="Blocked: writing files on the $DEFAULT branch. This workflow requires a branch cut from $DEFAULT, and the change you are about to make would land on $DEFAULT itself. Cut a branch, then do this again. If the user asked for this on $DEFAULT deliberately, say that this is blocked and why, and let them decide — do not work around it."
    ;;
  Bash)
    # Every command the shell runs is read for git commit and git push, behind
    # the wrappers the reader reads over; the same words inside a quoted text
    # are a word of their command and no command. Standing on the default
    # branch is still the precondition: this file exits 0 above whenever the
    # current branch is not the default one, so a push from a task branch is
    # never read at all — git push origin main from a task branch goes through,
    # measured 9 September 2026. Once it is looking, what decides is no longer
    # where the run stands but what the push moves. A push is read for its
    # destination: the refspecs after the remote, taken as the part behind the
    # last colon with a leading + and refs/heads/ stripped. A destination that
    # is demonstrably another branch goes through, deletions included. No
    # readable destination means the current branch — which here is the
    # default one — so it blocks. Every git push in the command is read, so one
    # blocking segment blocks the whole call.
    US=$(printf '\037')
    COMMIT=no
    BLOCKED=no
    PUSH=no
    while IFS= read -r LINE; do
      case "$LINE" in [0-9]*) ;; *) continue ;; esac
      IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
      [ "$FIRST" -gt 0 ] || continue
      IFS="$US" read -ra W <<< "${WORDS}${US}x"
      F=$((FIRST - 1))
      [ "${W[$F]##*/}" = "git" ] || continue
      C=$(git_command "$F") || continue
      case "${W[$C]}" in
        commit) COMMIT=yes ;;
        push)
          PUSH=yes
          REMOTE_SEEN=no
          NREFS=0
          j=$C
          while j=$((j + 1)); [ "$j" -lt $((${#W[@]} - 1)) ]; do
            TOK="${W[$j]}"
            case "$TOK" in
              --all|--mirror) BLOCKED=yes; continue;;
              -*) continue;;
            esac
            if [ "$REMOTE_SEEN" = no ]; then REMOTE_SEEN=yes; continue; fi
            NREFS=$((NREFS + 1))
            DST="${TOK##*:}"
            DST="${DST#+}"
            DST="${DST#refs/heads/}"
            case "$DST" in
              "$DEFAULT"|HEAD|@) BLOCKED=yes;;
            esac
          done
          [ "$NREFS" -eq 0 ] && BLOCKED=yes
          ;;
      esac
    done <<< "$INPUT"
    [ "$COMMIT" = yes ] || [ "$PUSH" = yes ] || exit 0

    if [ "$COMMIT" = yes ]; then
      MSG="Blocked: committing on the $DEFAULT branch. This workflow requires a branch cut from $DEFAULT, and the commit you are about to make would land on $DEFAULT itself. Cut a branch, then do this again. If the user asked for this on $DEFAULT deliberately, say that this is blocked and why, and let them decide — do not work around it."
    else
      [ "$BLOCKED" = yes ] || exit 0
      MSG="Blocked: pushing to $DEFAULT. This workflow requires a branch cut from $DEFAULT. This push either names $DEFAULT as its destination or names no destination at all, which sends the current branch — $DEFAULT itself. A push whose destination is demonstrably another branch is not blocked, deletions included. If the user asked for this on $DEFAULT deliberately, or if this command does not move $DEFAULT, say that this is blocked and why, and let them decide — do not run the same act under another command name and do not reword it until this stops matching."
    fi
    ;;
  *)
    exit 0
    ;;
esac

echo "$MSG" >&2
exit 2
