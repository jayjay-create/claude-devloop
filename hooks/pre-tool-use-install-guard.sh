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
# The directory the tool's JSON says the command runs in. A relative path in
# the command is placed against it; where the JSON carries none, a relative
# path cannot be placed at all.
CWD=$(echo "$INPUT" | sed -n 's/.*"cwd"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)

# Prints the path where it can be placed inside the project, nothing where it
# cannot. Absolute: under the project directory. Relative, without a ..
# segment: against the directory the command runs in, where that lies inside
# the project and no cd before the point given as $2 leaves it - a cd to a
# relative path without .. stays inside, any other cd, or one without a target,
# is not followed. A ~ or $HOME opening is expanded; any other variable is not
# read. Nothing here says the path exists: a pip that does not exist installs
# nothing.
inside() {
  local p="$1" before="$2" c
  case "$p" in '~/'*) p="$HOME${p#\~}" ;; '$HOME/'*) p="$HOME${p#\$HOME}" ;; '${HOME}/'*) p="$HOME${p#\$\{HOME\}}" ;; esac
  case "/$p/" in */../*) return ;; esac
  case "$p" in # absolute inside the project, absolute or variable elsewhere, or relative
    "$PROJECT_DIR"|"$PROJECT_DIR"/*) printf '%s' "$p" ;;
    /*|'~'*|'$'*) ;;
    *)
      case "$CWD" in "$PROJECT_DIR"|"$PROJECT_DIR"/*) ;; *) return ;; esac
      while IFS= read -r c; do
        [ -n "$c" ] || continue
        c=$(printf '%s' "$c" | sed -E 's/^cd//; s/^[[:space:]]+//')
        [ -n "$c" ] || return
        case "$c" in /*|'~'*|'$'*|-*) return ;; esac
        case "/$c/" in */../*) return ;; esac
      done <<< "$(printf '%s' "$before" | grep -oE '(^|[[:space:];&|(])cd([[:space:]]+[^[:space:];|&)]+)?([[:space:];&|)]|$)' | sed -E 's/^[[:space:];&|(]+//; s/[[:space:];&|)]+$//')"
      printf '%s/%s' "$CWD" "$p" ;;
  esac
}

# The verb half. Each route that fires is kept by name, because under a record
# saying yes the pass turns on where that route puts things. cargo add writes
# the project's own manifest and is no install.
MANAGER='brew|port|apt|apt-get|yum|dnf|zypper|pacman|apk|snap|choco|winget|scoop|sdk|gem|cargo|go|pipx|uv[[:space:]]+tool|asdf|mise|rustup|nvm'
ROUTES=$(echo "$CMD" | grep -oE "(^|[^[:alnum:]_.-])($MANAGER)[[:space:]]+(install|add|use|tap)([[:space:]]|$)" | grep -vE '(^|[^[:alnum:]_.-])cargo[[:space:]]+add([[:space:]]|$)' | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]]+(install|add|use|tap).*$//; s/[[:space:]]+/ /g')
[ -n "$ROUTES" ] && BEYOND=yes
GLOBALS=$(echo "$CMD" | grep -oE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+(install|i|add)([[:space:]].*)?[[:space:]](-g|--global)([[:space:]]|$)' | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]].*$//')
[ -n "$GLOBALS" ] && BEYOND=yes
GLOBALS2=$(echo "$CMD" | grep -oE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+global[[:space:]]+(add|install)([[:space:]]|$)' | sed -E 's/^[^[:alnum:]]*//; s/[[:space:]].*$//')
[ -n "$GLOBALS2" ] && BEYOND=yes

# The forms that fetch a tool and run it without saying install, read by name
# alone since 8 October 2026 (docs/skill-conventions.md, the ruling of that
# date), the options before the name read since the review of pull request
# #159 the same day: go run with a version suffix on its package, the
# options before the package without a separate value or, for the build
# flags that take one and for -exec, with one - -C, -p, -covermode,
# -coverpkg, -asmflags, -buildmode, -compiler, -gccgoflags, -gcflags,
# -installsuffix, -ldflags, -mod, -modfile, -overlay, -pgo, -pkgdir, -tags,
# -toolexec, -exec, with one dash or two; a value in quotes with spaces in
# it may end the reading, and the command then passes, since in doubt a run
# with nobody there is not to be blocked, the person's principle in the
# roadmap entry of 8 October 2026. uvx and uv tool run. uv run with --with,
# -w, --with-editable or --with-requirements among uv's own options before
# the command, never behind it, where they belong to the command: before
# the option may stand options without a separate value, an attached =value
# among them, and these with one - -p or --python, --project, --directory,
# --package, --extra, --group, --only-group, --no-group, --env-file,
# --index, --default-index, -i or --index-url, --extra-index-url, -f or
# --find-links, --config-file, --cache-dir, --with, --with-editable,
# --with-requirements; the first word that is neither an option nor the
# value of one of these is the command, and -- ends the options too; an
# option with a separate value that is not in that list, or a short option
# with its value attached, -whttpx, ends the reading as well, and the
# command then passes, by the same principle. pipx run. pnpm dlx with its
# aliases pnpx and pnx, pnpm create, the same and a global add under pn,
# pnpm's short alias, with options before dlx or create, --package,
# --allow-build and -C or --dir with a separate value. yarn dlx and yarn
# create, gem exec, brew exec and brew x. brew bundle with no subcommand,
# with install or upgrade, or with --install on any subcommand, where
# --file, --upgrade-formulae, --upgrade-formula and --jobs may carry a
# separate value before and behind the subcommand. Under a record saying no
# or never written they block with that record's cause; under a yes they
# pass without being held against the places, since most land in a cache or
# a directory of the tool that no record names. npx, npm exec, npm create,
# npm init, bunx, bun x, bun create and docker run are not read: the first
# take the project's own copy first and fetch only where it is missing, so
# the command does not say whether anything is fetched, and docker run
# pulls into Docker's own store.
RUN=""
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])go[[:space:]]+run([[:space:]]+(--?(C|p|covermode|coverpkg|asmflags|buildmode|compiler|gccgoflags|gcflags|installsuffix|ldflags|mod|modfile|overlay|pgo|pkgdir|tags|toolexec|exec)[[:space:]]+[^[:space:];|&]+|-[^[:space:];|&]*))*[[:space:]]+[^[:space:];|&@-][^[:space:];|&@]*@[^[:space:];|&]+' && RUN="$RUN go-run"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])(uvx|uv[[:space:]]+tool[[:space:]]+run)([[:space:]]|$)' && RUN="$RUN uvx"
echo "$CMD" | grep -qE -- '(^|[^[:alnum:]_.-])uv[[:space:]]+run([[:space:]]+(--[^[:space:];|&=]+(=[^[:space:];|&]*)?|-[[:alnum:]]|(-p|--python|--project|--directory|--package|--extra|--group|--only-group|--no-group|--env-file|--index|--default-index|-i|--index-url|--extra-index-url|-f|--find-links|--config-file|--cache-dir|--with|--with-editable|--with-requirements)[[:space:]]+[^[:space:];|&]+))*[[:space:]]+(--with|-w|--with-editable|--with-requirements)([[:space:]=]|$)' && RUN="$RUN uv-run-with"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])pipx[[:space:]]+run([[:space:]]|$)' && RUN="$RUN pipx-run"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])((pnpm|pn)([[:space:]]+((--package|--allow-build|-C|--dir)[[:space:]]+[^[:space:];|&]+|-[^[:space:];|&]*))*[[:space:]]+(dlx|create)|pnpx|pnx)([[:space:]]|$)' && RUN="$RUN pnpm-dlx"
echo "$CMD" | grep -qE -- '(^|[^[:alnum:]_.-])pn[[:space:]]+(install|i|add)([[:space:]][^;|&]*)?[[:space:]](-g|--global)([[:space:]]|$)' && RUN="$RUN pn-global"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])yarn[[:space:]]+(dlx|create)([[:space:]]|$)' && RUN="$RUN yarn-dlx"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])gem[[:space:]]+exec([[:space:]]|$)' && RUN="$RUN gem-exec"
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])brew[[:space:]]+(exec|x)([[:space:]]|$)' && RUN="$RUN brew-exec"
echo "$CMD" | grep -qE -- '(^|[^[:alnum:]_.-])brew[[:space:]]+bundle(([[:space:]]+((--file|--upgrade-formulae|--upgrade-formula|--jobs)[[:space:]]+[^[:space:];|&]+|-[^[:space:];|&]*))*([[:space:]]+(install|upgrade))?([[:space:]]+((--file|--upgrade-formulae|--upgrade-formula|--jobs)[[:space:]]+[^[:space:];|&]+|-[^[:space:];|&]*))*[[:space:]]*($|[;|&)])|[[:space:]][^;|&]*[[:space:]]--install([[:space:]]|$))' && RUN="$RUN brew-bundle"
[ -n "$RUN" ] && BEYOND=yes

# pip, in the forms that say what runs it: a pip named by a path or bare, an
# interpreter named by a path or bare followed by -m pip, and uv pip. One that
# installs inside the project is a dependency and sets nothing here: a pip or
# an interpreter whose path lies inside the project; a bare one after an
# environment inside the project was activated earlier in this same command,
# with source or . on its bin/activate, no deactivate anywhere in the command,
# and the pip or the interpreter standing in that environment's bin on disk;
# and uv pip where a .venv stands inside the project at the directory the
# command runs in or a parent of it, which is the order uv itself looks in,
# with no --system, --python, --target or --prefix. What an earlier command
# activated, or what the shell's own configuration put on PATH, is not in
# this string and does not count: a bare pip stays an install outside the
# repository.
PIPS=$(echo "$CMD" | grep -oE "(^|[^[:alnum:]_.-])(uv[[:space:]]+pip|([^[:space:];|&()'\`]*/)?python[0-9.]*[[:space:]]+-m[[:space:]]+pip|([^[:space:];|&()'\`]*/)?pip3?)[[:space:]]+install([[:space:]]|$)")
ACT=""
if ! echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])deactivate([[:space:];&|]|$)'; then
  A=$(echo "$CMD" | grep -oE "(^|[[:space:];&|(])(source|\.)[[:space:]]+[^[:space:];|&()'\`]+/bin/activate([[:space:];&|)]|$)" | head -1 | sed -E 's/^[[:space:];&|(]*(source|\.)[[:space:]]+//; s/\/bin\/activate[[:space:];&|)]*$//')
  if [ -n "$A" ]; then
    V=$(inside "$A" "${CMD%%"$A/bin/activate"*}")
    [ -n "$V" ] && [ -e "$V/bin/activate" ] && ACT="$V" && ACTLINE="$A/bin/activate"
  fi
fi
PIPBEYOND=""
while IFS= read -r M; do
  [ -n "$M" ] || continue
  case "$CMD" in "$M"*) ;; *) M="${M#?}" ;; esac
  M="${M%"${M##*[![:space:]]}"}"
  BEFORE="${CMD%%"$M"*}"
  T=$(printf '%s' "$M" | sed -E 's/[[:space:]]+install$//; s/[[:space:]]+/ /g; s/^[[:space:]]+//')
  KIND=pip
  case "$T" in 'uv pip') KIND=uvpip ;; *' -m pip') KIND=py; T="${T% -m pip}" ;; esac
  ACTHERE=""
  if [ -n "$ACT" ]; then case "$BEFORE" in *"$ACTLINE"*) ACTHERE="$ACT" ;; esac; fi
  LOCAL=""
  case "$KIND" in
    pip|py)
      case "$T" in # a path, or a bare name
        */*) V=$(inside "$T" "$BEFORE"); [ -n "$V" ] && LOCAL=yes ;;
        *) [ -n "$ACTHERE" ] && [ -x "$ACTHERE/bin/$T" ] && LOCAL=yes ;;
      esac ;;
    uvpip)
      if printf '%s' "${CMD#*uv pip}" | grep -qE -- '(^|[[:space:]])(--system|--python|-p|--target|--prefix|--break-system-packages)([[:space:]=]|$)'; then :
      elif [ -n "$ACTHERE" ]; then LOCAL=yes
      else
        S=$(inside "." "$BEFORE"); S="${S%/.}"
        E="${VIRTUAL_ENV:-${CONDA_PREFIX:-}}"
        case "$E" in ''|"$PROJECT_DIR"|"$PROJECT_DIR"/*) ;; *) S="" ;; esac
        while [ -n "$S" ]; do
          [ -d "$S/.venv" ] && { LOCAL=yes; break; }
          [ "$S" = "$PROJECT_DIR" ] && break
          S="${S%/*}"
        done
      fi ;;
  esac
  [ -n "$LOCAL" ] && continue
  BEYOND=yes
  PIPBEYOND="$PIPBEYOND
$KIND	$T"
done <<< "$PIPS"

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

# Browsers for tests, since 8 October 2026: the named install commands whose
# vendors document a destination outside the repository, which is the case
# of the ruling of 28 September 2026 in docs/skill-conventions.md. playwright
# install in every form the vendor documents - bare or behind any runner, by
# a path, as python -m playwright, as the .NET playwright.ps1, as the Java CLI
# through mvn with exec.args - cypress install, and puppeteer browsers
# install, with or without a version behind puppeteer. What follows the verb
# up to the next separator is read: --dry-run and --list on playwright
# install install nothing and set nothing here, and neither does the help,
# which is --help and -h on playwright install, playwright install-deps and
# cypress install, and --help alone on puppeteer browsers install and on
# @puppeteer/browsers install, whose -h is no help (the review of pull
# request #159, 8 October 2026); a branded channel is installed by
# Playwright at the system's own location, over the browser already there;
# install-deps, --with-deps and --install-deps install system packages,
# which needs root; both stay the user's under every answer.
# @puppeteer/browsers install is read for --install-deps alone: without it
# the download lands in the current directory, the default of its --path,
# and a --path to a place outside is not read, the guard taking the default
# as the decision of 8 October 2026 on a moved location has it.
BROWSERS=""
PW_CLI='com\.microsoft\.playwright\.CLI[^;|&]*exec\.args=[[:space:]"'"'"']*'
PW_BIN='(^|[^[:alnum:]_.-])([^[:space:];|&]*/)?playwright(\.ps1)?(@[^[:space:];|&]+)?[[:space:]]+'
BRANDED='chrome|msedge|chrome-beta|msedge-beta|chrome-dev|msedge-dev|chrome-canary|msedge-canary'
PWI_RE="(${PW_CLI}|${PW_BIN})install([[:space:]][^;|&]*|[;|&)]|$)"
if echo "$CMD" | grep -qE "$PWI_RE"; then
  A=$(echo "$CMD" | grep -oE "$PWI_RE" | head -1 | sed -E 's/^.*install//; s/[;|&)]$//')
  if ! printf '%s' "$A" | grep -qE -- '(^|[[:space:]])(--dry-run|--list|--help|-h)([[:space:]]|$)'; then
    BEYOND=yes
    if printf '%s' "$A" | grep -qE "(^|[[:space:]])($BRANDED)([[:space:]]|$)"; then BRAND=yes
    elif printf '%s' "$A" | grep -qE -- '(^|[[:space:]])--with-deps([[:space:]]|$)'; then SYSPKG=yes
    else BROWSERS="$BROWSERS playwright"; fi
  fi
fi
PWD_RE="(${PW_CLI}|${PW_BIN})install-deps([[:space:]][^;|&]*|[;|&)]|$)"
if echo "$CMD" | grep -qE "$PWD_RE"; then
  A=$(echo "$CMD" | grep -oE "$PWD_RE" | head -1 | sed -E 's/^.*install-deps//; s/[;|&)]$//')
  printf '%s' "$A" | grep -qE -- '(^|[[:space:]])(--dry-run|--help|-h)([[:space:]]|$)' || { BEYOND=yes; SYSPKG=yes; }
fi
CY_RE='(^|[^[:alnum:]_.-])([^[:space:];|&]*/)?cypress(@[^[:space:];|&]+)?[[:space:]]+install([[:space:]][^;|&]*|[;|&)]|$)'
if echo "$CMD" | grep -qE "$CY_RE"; then
  A=$(echo "$CMD" | grep -oE "$CY_RE" | head -1 | sed -E 's/^.*cypress(@[^[:space:];|&]+)?[[:space:]]+install//; s/[;|&)]$//')
  printf '%s' "$A" | grep -qE -- '(^|[[:space:]])(--help|-h)([[:space:]]|$)' || { BEYOND=yes; BROWSERS="$BROWSERS cypress"; }
fi
PP_RE='(^|[^[:alnum:]_.-])puppeteer(@[^[:space:];|&]+)?[[:space:]]+browsers[[:space:]]+install([[:space:]][^;|&]*|[;|&)]|$)'
if echo "$CMD" | grep -qE "$PP_RE"; then
  A=$(echo "$CMD" | grep -oE "$PP_RE" | head -1 | sed -E 's/^.*browsers[[:space:]]+install//; s/[;|&)]$//')
  if ! printf '%s' "$A" | grep -qE -- '(^|[[:space:]])--help([[:space:]]|$)'; then
    BEYOND=yes
    if printf '%s' "$A" | grep -qE -- '(^|[[:space:]])--install-deps([[:space:]]|$)'; then SYSPKG=yes; else BROWSERS="$BROWSERS puppeteer"; fi
  fi
fi
PB_RE='(^|[^[:alnum:]_.-])@puppeteer/browsers[[:space:]]+install([[:space:]][^;|&]*|[;|&)]|$)'
if echo "$CMD" | grep -qE "$PB_RE"; then
  A=$(echo "$CMD" | grep -oE "$PB_RE" | head -1 | sed -E 's/^.*browsers[[:space:]]+install//; s/[;|&)]$//')
  if printf '%s' "$A" | grep -qE -- '(^|[[:space:]])--install-deps([[:space:]]|$)' && ! printf '%s' "$A" | grep -qE -- '(^|[[:space:]])--help([[:space:]]|$)'; then BEYOND=yes; SYSPKG=yes; fi
fi
[ "${BEYOND:-no}" = "yes" ] || exit 0

# Only now is the record read: this hook runs on every Bash call, and a command
# that stays inside the repository never gets here. The record is read off the
# default branch as last fetched, never off the working tree, through the same
# program hooks/session-start.sh prints it with. Every failure below is a block
# and names its cause; the one pass is a record saying yes whose places or
# routes name every place this command lands.
HERE=$(cd "$(dirname "$0")" && pwd)
RECORD=$("$HERE/../bin/devloop-install-record" "$PROJECT_DIR" 2>&1)
if [ $? -ne 0 ]; then
  CAUSE=$(printf '%s\n' "$RECORD" | sed -n 's/^cause: //p' | head -1)
  [ -n "$CAUSE" ] || CAUSE="the record could not be read: ${RECORD:-the reader answered nothing}"
else
  REF=$(printf '%s\n' "$RECORD" | sed -n 's/^ref: //p' | head -1)
  TOOLS=$(printf '%s\n' "$RECORD" | sed -n 's/^tools: //p' | head -1)
  PLACES=$(printf '%s\n' "$RECORD" | sed -n 's/^place: //p')
  RROUTES=$(printf '%s\n' "$RECORD" | sed -n 's/^route: //p')
  if [ "$TOOLS" = "no" ]; then
    CAUSE="the record says no (install-tools: no on $REF)"
  elif [ "${SUDO:-no}" = "yes" ]; then
    CAUSE="it needs sudo, which stays the user's under every answer"
  elif [ "${PIPED:-no}" = "yes" ]; then
    CAUSE="it pipes a script from the network into a shell, which stays the user's under every answer"
  elif [ "${BRAND:-no}" = "yes" ]; then
    CAUSE="it installs a branded browser at the system's own location, over the one already there, which stays the user's under every answer"
  elif [ "${SYSPKG:-no}" = "yes" ]; then
    CAUSE="it installs system packages, which needs root and stays the user's under every answer"
  else
    # Where it lands. A route named in the command is asked on this machine,
    # with the command its vendor documents for that, in this hook's own
    # process and on this hook's own PATH: a route not found here, one that
    # answers nothing, or one whose answer is no absolute path counts as not
    # read, and not read is a block. A route the record names by its name
    # opens whatever that route answers here; any other answer is held against
    # the places the record names. A path written in the command is taken as
    # written. A system package manager, a version manager, a make install
    # whose command names no destination, and anything else cannot be read
    # off the command and stay blocked, as before.
    DESTS=""
    UNREAD=""
    OPENED=no
    absolute() { case "$1" in /*) printf '%s' "$1" ;; esac; }
    place() {
      if printf '%s\n' "$RROUTES" | grep -qxF "$1"; then OPENED=yes; else DESTS="$DESTS
$2"; fi
    }
    gobin() {
      local b p
      b=$(absolute "$(go env GOBIN 2>/dev/null)"); p=$(absolute "$(go env GOPATH 2>/dev/null)"); p="${p%%:*}"
      if [ -n "$b" ]; then echo "$b"; elif [ -n "$p" ]; then echo "$p/bin"; fi
    }
    # cargo cannot be asked on the stable channel - cargo config get is
    # nightly-only - so its root is read in the vendor's order: --root in the
    # command, CARGO_INSTALL_ROOT, install.root in a config file, CARGO_HOME,
    # $HOME/.cargo, and the executables go into its bin. A config file on
    # cargo's search path that sets install.root is not parsed here and blocks.
    cargobin() {
      local r d f
      r=$(printf '%s' "${CMD#*cargo }" | grep -oE -- '(^|[[:space:]])--root[[:space:]=]+[^[:space:];|&]+' | head -1 | sed -E 's/^[[:space:]]*--root[[:space:]=]+//')
      if [ -z "$r" ]; then
        d="${CWD:-$PROJECT_DIR}"
        while [ -n "$d" ]; do
          for f in "$d/.cargo/config.toml" "$d/.cargo/config"; do
            [ -f "$f" ] && grep -qE '^[[:space:]]*(\[install\]|install\.root[[:space:]]*=)' "$f" && { echo CONFIG; return; }
          done
          [ "$d" = "/" ] && break
          d="${d%/*}"; [ -n "$d" ] || d="/"
        done
        for f in "${CARGO_HOME:-$HOME/.cargo}/config.toml" "${CARGO_HOME:-$HOME/.cargo}/config"; do
          [ -f "$f" ] && grep -qE '^[[:space:]]*(\[install\]|install\.root[[:space:]]*=)' "$f" && { echo CONFIG; return; }
        done
        r="${CARGO_INSTALL_ROOT:-${CARGO_HOME:-$HOME/.cargo}}"
      fi
      printf '%s/bin' "$r"
    }
    while IFS= read -r R; do
      [ -n "$R" ] || continue
      case "$R" in
        brew) P=$(absolute "$(brew --prefix 2>/dev/null)"); if [ -n "$P" ]; then place brew "$P/bin"; else UNREAD="$UNREAD; brew (brew --prefix did not answer)"; fi ;;
        go) P=$(gobin); if [ -n "$P" ]; then place go "$P"; else UNREAD="$UNREAD; go (go env did not answer)"; fi ;;
        npm) P=$(absolute "$(npm prefix -g 2>/dev/null)"); if [ -n "$P" ]; then place npm "$P/bin"; else UNREAD="$UNREAD; npm (npm prefix -g did not answer)"; fi ;;
        pnpm) P=$(absolute "$(pnpm bin -g 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place pnpm "$P"; else UNREAD="$UNREAD; pnpm (pnpm bin -g did not answer)"; fi ;;
        yarn) P=$(absolute "$(yarn global bin 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place yarn "$P"; else UNREAD="$UNREAD; yarn (yarn global bin did not answer)"; fi ;;
        bun) P=$(absolute "$(bun pm bin -g 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place bun "$P"; else UNREAD="$UNREAD; bun (bun pm bin -g did not answer)"; fi ;;
        pipx) P=$(absolute "$(pipx environment --value PIPX_BIN_DIR 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place pipx "$P"; else UNREAD="$UNREAD; pipx (pipx environment --value PIPX_BIN_DIR did not answer)"; fi ;;
        'uv tool') P=$(absolute "$(uv tool dir --bin 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place uv "$P"; else UNREAD="$UNREAD; uv tool (uv tool dir --bin did not answer)"; fi ;;
        cargo) P=$(cargobin); case "$P" in
          CONFIG) UNREAD="$UNREAD; cargo (a config file on cargo's search path sets install.root, which this guard does not read)" ;;
          '') UNREAD="$UNREAD; cargo (its install root could not be read)" ;;
          *) place cargo "$P" ;;
        esac ;;
        gem)
          SEG="${CMD#*gem }"
          if printf '%s' "$SEG" | grep -qE -- '(^|[[:space:]])(-i|--install-dir|--build-root)([[:space:]=]|$)'; then
            UNREAD="$UNREAD; gem (--install-dir or --build-root moves the destination, which this guard does not read)"
          else
            P=$(printf '%s' "$SEG" | grep -oE -- '(^|[[:space:]])(-n|--bindir)[[:space:]=]+[^[:space:];|&]+' | head -1 | sed -E 's/^[[:space:]]*(-n|--bindir)[[:space:]=]+//')
            if [ -n "$P" ]; then DESTS="${DESTS}
$P" # --bindir, taken as written
            else
              if printf '%s' "$SEG" | grep -qE -- '(^|[[:space:]])--user-install([[:space:]]|$)'; then
                P=$(absolute "$(gem environment 2>/dev/null | sed -n 's/^[[:space:]]*- USER INSTALLATION DIRECTORY: //p' | head -1)"); [ -n "$P" ] && P="$P/bin"
              else
                P=$(absolute "$(gem environment 2>/dev/null | sed -n 's/^[[:space:]]*- EXECUTABLE DIRECTORY: //p' | head -1)")
              fi
              if [ -n "$P" ]; then place gem "$P"; else UNREAD="$UNREAD; gem (gem environment did not answer)"; fi
            fi
          fi ;;
        port|apt|apt-get|yum|dnf|zypper|pacman|apk|snap|choco|winget|scoop) UNREAD="$UNREAD; $R (a system package manager: each package decides where it lands, and it needs root, so it stays the user's under every answer)" ;;
        sdk|asdf|mise|rustup|nvm) UNREAD="$UNREAD; $R (a version manager: what it installs lands in its own tree and reaches shell profiles this guard never reads, so it stays the user's under every answer)" ;;
        *) UNREAD="$UNREAD; $R (where it puts things is not read off this machine by this guard)" ;;
      esac
    done <<< "$(printf '%s\n%s\n%s\n' "$ROUTES" "$GLOBALS" "$GLOBALS2" | grep -v '^$' | sort -u)"
    # pip outside the project: the destination is the scripts directory of
    # the interpreter the command names, asked of that interpreter through
    # sysconfig, the user scheme where --user stands there. A bare pip names
    # no interpreter and cannot be asked; uv pip that reached here names no
    # environment inside the project.
    while IFS='	' read -r K T; do
      [ -n "$K" ] || continue
      case "$K" in
        pip) UNREAD="$UNREAD; $T (a pip outside the project, or one this guard cannot place inside it, names no interpreter, so which Python it installs for is not in the command: run it as python -m pip, or name the project's own pip by a path inside the project)" ;;
        uvpip) UNREAD="$UNREAD; uv pip (it names no environment inside the project: no activation earlier in this command, no .venv from the directory it runs in up to the project root, or --system, --python, --target or --prefix stands there)" ;;
        py)
          SEG="${CMD#*$T -m pip}"
          if printf '%s' "$SEG" | grep -qE -- '(^|[[:space:]])(-t|--target|--prefix|--root)([[:space:]=]|$)'; then
            UNREAD="$UNREAD; $T -m pip (--target, --prefix or --root moves the destination, which this guard does not read)"
          else
            case "$T" in # the interpreter: a path, expanded where it opens on ~ or $HOME, or a bare name found on this hook's PATH
              '~/'*) I="$HOME${T#\~}" ;;
              '$HOME/'*) I="$HOME${T#\$HOME}" ;;
              '${HOME}/'*) I="$HOME${T#\$\{HOME\}}" ;;
              /*) I="$T" ;;
              */*) I="" ;;
              *) I=$(command -v "$T" 2>/dev/null) ;;
            esac
            if [ -z "$I" ] || [ ! -x "$I" ]; then
              UNREAD="$UNREAD; $T -m pip ($T is not found here)"
            else
              if printf '%s' "$SEG" | grep -qE -- '(^|[[:space:]])--user([[:space:]]|$)'; then
                P=$(absolute "$("$I" -c 'import sysconfig;print(sysconfig.get_path("scripts",sysconfig.get_preferred_scheme("user")))' 2>/dev/null)")
              else
                P=$(absolute "$("$I" -c 'import sysconfig;print(sysconfig.get_path("scripts"))' 2>/dev/null)")
              fi
              if [ -n "$P" ]; then place pip "$P"; else UNREAD="$UNREAD; $T -m pip ($T did not answer where it puts scripts)"; fi
            fi
          fi ;;
      esac
    done <<< "$PIPBEYOND"
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
    # make install: a destination the command itself writes - PREFIX, prefix,
    # DESTDIR, BINDIR, bindir or exec_prefix as a variable on the make line -
    # is taken as written; where none stands there, the makefile decides.
    if [ "${MAKEINST:-no}" = "yes" ]; then
      MD=$(echo "$CMD" | grep -oE '(^|[^[:alnum:]_.-])make([[:space:]]+[^[:space:];&|]+)*[[:space:]]+install([[:space:]]|$)' | head -1 | grep -oE '(^|[[:space:]])(PREFIX|prefix|DESTDIR|BINDIR|bindir|exec_prefix|EXEC_PREFIX)=[^[:space:]]+' | sed -E 's/^[[:space:]]*[A-Za-z_]+=//')
      if [ -n "$MD" ]; then DESTS="$DESTS
$MD"; else UNREAD="$UNREAD; make install (its destination is not in the command: no PREFIX, DESTDIR or BINDIR written on the make line, so the makefile decides)"; fi
    fi
    # Browsers for tests: the vendor's default for the system this guard runs
    # on, read with uname -s and never from a setting of the vendor that moves
    # it - PLAYWRIGHT_BROWSERS_PATH, CYPRESS_CACHE_FOLDER, PUPPETEER_CACHE_DIR,
    # the vendors' configuration files - which is the decision of 8 October
    # 2026 in docs/skill-conventions.md. Any other system is not read, and
    # not read is a block.
    if [ -n "$BROWSERS" ]; then
      OS=$(uname -s 2>/dev/null)
      for B in $BROWSERS; do
        D=""
        case "$OS" in
          Darwin) case "$B" in playwright) D='~/Library/Caches/ms-playwright' ;; cypress) D='~/Library/Caches/Cypress' ;; puppeteer) D='~/.cache/puppeteer' ;; esac ;;
          Linux) case "$B" in playwright) D='~/.cache/ms-playwright' ;; cypress) D='~/.cache/Cypress' ;; puppeteer) D='~/.cache/puppeteer' ;; esac ;;
        esac
        if [ -n "$D" ]; then DESTS="$DESTS
$D"; else UNREAD="$UNREAD; $B (where it puts things is not read off this machine by this guard)"; fi
      done
    fi
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
      CAUSE="it lands in$UNNAMED, which the record does not name; the record names: $(printf '%s\n' "$PLACES" | tr '\n' ' ' | sed 's/ $//'); routes: $(printf '%s\n' "$RROUTES" | tr '\n' ' ' | sed 's/ $//; s/^$/none/')"
    elif [ -z "$(printf '%s' "$DESTS" | tr -d '\n')" ] && [ "$OPENED" != "yes" ] && [ -z "$RUN" ]; then
      CAUSE="where it lands could not be read off the command"
    else
      exit 0 # every destination named, or a fetch-and-run form alone: the record opens it
    fi
  fi
fi

echo "Blocked: this installs outside the repository. The install record, read off the default branch as last fetched and never off the working tree, does not open it: $CAUSE. The install is the user's to run, not yours to run for them, and a yes said here does not change that: only the record does. Say in one line what it installs and what it unblocks, and hand them the exact command, backed — by the vendor's own installation line, or by the path in it resolving — and say both ways it can go at once. It picks up once the tool stands at the path that command writes to: their word is when to look, that path is what decides, never command -v, and nothing moves here until they say so. A decline is an answer too: say what it costs this work, and carry on. A block is not a decline: with nobody there, the issue or the skip reason carries the cause above, not a decline. If it only looked like an install — a project-local dependency, a virtual environment — say so and let them decide; a pip or an interpreter named by a path inside the project passes here without the record." >&2
exit 2
