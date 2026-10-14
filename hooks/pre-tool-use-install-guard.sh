#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON and takes the command apart as the shell runs it, since 12 October
# 2026; every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that. Every command the shell runs is read for itself, judged
# at its first word behind the assignments and the wrappers the reader reads
# over: a text in quotes is a word of its command and no command, a heredoc
# for another program is not searched, and the command behind a newline, a
# separator, a substitution or a shell's -c is a command of its own. What
# the reader cannot take apart goes through, since the shell runs nothing of
# it either.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

# The directory the tool's JSON says the command runs in. A relative path in
# the command is placed against it; where the JSON carries none, a relative
# path cannot be placed at all.
CWD=$(printf '%s\n' "$INPUT" | sed -n 's/^cwd: //p' | head -1)
CMDS=$(printf '%s\n' "$INPUT" | grep '^[0-9]')
US=$(printf '\037')
RS=$(printf '\036')
OS=$(uname -s 2>/dev/null)

# load LINE: the fields of one command line into ID, PARENT, REL, PIPE, the
# words into W from 0, N their count, F the index of the word the command is
# judged by or -1, NAME that word without its path.
load() {
  IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$1"
  IFS="$US" read -ra W <<< "${WORDS}${US}x"
  N=$((${#W[@]} - 1))
  F=$((FIRST - 1))
  NAME=""
  [ "$F" -ge 0 ] && NAME="${W[$F]##*/}"
}
# name_of ID: the judged word of the command with that id, without its path
name_of() {
  local L
  while IFS= read -r L; do
    case "$L" in "$1$US"*) ;; *) continue ;; esac
    IFS="$US" read -r _ _ _ _ FIRST2 WORDS2 <<< "$L"
    [ "$FIRST2" -gt 0 ] || return
    IFS="$US" read -ra W2 <<< "${WORDS2}${US}x"
    printf '%s' "${W2[$((FIRST2 - 1))]##*/}"
    return
  done <<< "$CMDS"
}
# parent_of ID: the id of the command it stands in
parent_of() {
  local L
  while IFS= read -r L; do
    case "$L" in "$1$US"*) IFS="$US" read -r _ P2 _ <<< "$L"; printf '%s' "$P2"; return ;; esac
  done <<< "$CMDS"
}
# expand PATH: a ~ or $HOME opening replaced by the home directory; the result
# is printed, and nothing where another variable stands in it
expand() {
  local p="$1"
  case "$p" in '~') p="$HOME" ;; '~/'*) p="$HOME${p#\~}" ;; '$HOME') p="$HOME" ;; '$HOME/'*) p="$HOME${p#\$HOME}" ;; '${HOME}') p="$HOME" ;; '${HOME}/'*) p="$HOME${p#\$\{HOME\}}" ;; esac
  case "$p" in *'$'*) return ;; esac
  printf '%s' "$p"
}

# Prints the path where it can be placed inside the project, nothing where it
# cannot. Absolute: under the project directory. Relative, without a ..
# segment: against the directory the command runs in, where that lies inside
# the project and no cd among the commands before the one given as $2 leaves
# it - a cd to a relative path without .. stays inside, any other cd, or one
# without a target, is not followed. A ~ or $HOME opening is expanded; any
# other variable is not read. Nothing here says the path exists: a pip that
# does not exist installs nothing.
inside() {
  local p="$1" before="$2" c L
  case "$p" in '~/'*) p="$HOME${p#\~}" ;; '$HOME/'*) p="$HOME${p#\$HOME}" ;; '${HOME}/'*) p="$HOME${p#\$\{HOME\}}" ;; esac
  case "/$p/" in */../*) return ;; esac
  case "$p" in # absolute inside the project, absolute or variable elsewhere, or relative
    "$PROJECT_DIR"|"$PROJECT_DIR"/*) printf '%s' "$p" ;;
    /*|'~'*|'$'*) ;;
    *)
      case "$CWD" in "$PROJECT_DIR"|"$PROJECT_DIR"/*) ;; *) return ;; esac
      while IFS= read -r L; do
        IFS="$US" read -r ID2 _ _ _ FIRST2 WORDS2 <<< "$L"
        [ "$ID2" -lt "$before" ] || continue
        [ "$FIRST2" -gt 0 ] || continue
        IFS="$US" read -ra W2 <<< "${WORDS2}${US}x"
        [ "${W2[$((FIRST2 - 1))]##*/}" = "cd" ] || continue
        c="${W2[$FIRST2]:-x}"
        [ "${W2[$FIRST2]+set}" = set ] && [ "$FIRST2" -lt $((${#W2[@]} - 1)) ] || return
        case "$c" in /*|'~'*|'$'*|-*) return ;; esac
        case "/$c/" in */../*) return ;; esac
      done <<< "$CMDS"
      printf '%s/%s' "$CWD" "$p" ;;
  esac
}
# var NAME: the value of the variable set before the command being read,
# with env, sudo or export, the last setting winning; nothing where none
var() {
  local v="" e
  while IFS= read -r e; do case "$e" in "$1="*) v="${e#*=}" ;; esac; done <<< "$VARS"
  printf '%s' "$v"
}
# moved NAME: the destination a variable before the command moves a route to,
# read as the record's places are read: inside the project it opens nothing
# and prints INSIDE; outside it prints the path; a value this guard cannot
# read prints UNREAD; nothing where the variable is not set
moved() {
  local v p
  v=$(var "$1"); [ -n "$v" ] || return
  p=$(inside "$v" "$ID"); if [ -n "$p" ]; then printf 'INSIDE'; return; fi
  p=$(expand "$v"); if [ -z "$p" ]; then printf 'UNREAD'; return; fi
  case "$p" in /*) printf '%s' "$p" ;; *) printf 'UNREAD' ;; esac
}
# envs NAME...: the variables named that stand before the command, as the
# arguments env takes, with ~ and $HOME expanded, for asking a route where it
# lands as it would land for this command; ENVFAIL names a variable whose
# value cannot be read
envs() {
  local n v p
  ENVS=(); ENVFAIL=""
  for n in "$@"; do
    v=$(var "$n"); [ -n "$v" ] || continue
    p=$(expand "$v"); if [ -z "$p" ]; then ENVFAIL="$n"; continue; fi
    ENVS[${#ENVS[@]}]="$n=$p"
  done
}
# has FLAG...: whether one of the flags stands among the words behind the
# judged word, an attached =value allowed; -- ends the reading
has() {
  local j w f
  j=$F
  while j=$((j + 1)); [ "$j" -lt "$N" ]; do
    w="${W[$j]}"
    [ "$w" = "--" ] && return 1
    for f in "$@"; do [ "$w" = "$f" ] && return 0; case "$w" in "$f="*) return 0 ;; esac; done
  done
  return 1
}
# value OPT...: the value of the first of the options found behind the judged
# word, separate or attached with =; nothing where none stands
value() {
  local j w f
  j=$F
  while j=$((j + 1)); [ "$j" -lt "$N" ]; do
    w="${W[$j]}"
    [ "$w" = "--" ] && return
    for f in "$@"; do
      if [ "$w" = "$f" ]; then [ "$((j + 1))" -lt "$N" ] && printf '%s' "${W[$((j + 1))]}"; return; fi
      case "$w" in "$f="*) printf '%s' "${w#*=}"; return ;; esac
    done
  done
}
# A route that fires is kept by name with the variables before its command,
# because under a record saying yes the pass turns on where that route puts
# things, asked on this machine as it would answer for this command. A
# destination written in the command, or documented by the vendor and taken
# from there, is kept as it stands. cargo add writes the project's own
# manifest and is no install.
ITEMS=""
DESTS=""
UNREAD=""
ENVS=()
ENVFAIL=""
RUN=""
PIPBEYOND=""
BEYOND=no
VARS=""
EXPORTS=""
ACT=""
ACTID=0
PRIV=""
# item ROUTE EXTRA: a route that fires, unless a variable before the command
# that the vendor documents, or a path written on the line, moves its place
# inside the project, where it opens nothing under any answer
item() {
  local v p
  case "$1" in
    go) v="GOBIN GOPATH" ;; npm) v="npm_config_prefix NPM_CONFIG_PREFIX" ;; pnpm) v="PNPM_HOME" ;;
    bun) v="BUN_INSTALL_BIN" ;; gem) v="GEM_HOME" ;; pipx) v="PIPX_BIN_DIR PIPX_GLOBAL_BIN_DIR" ;;
    'uv tool') v="UV_TOOL_BIN_DIR" ;; cargo) v="CARGO_INSTALL_ROOT CARGO_HOME" ;; *) v="" ;;
  esac
  for p in $v; do [ "$(moved "$p")" = INSIDE ] && return; done
  case "$2" in root=?*|prefix=?*) p=$(inside "${2#*=}" "$ID"); [ -n "$p" ] && return ;; esac
  ITEMS="$ITEMS
$1$US$2$US$(printf '%s' "$VARS" | tr '\n' "$RS")"; BEYOND=yes
}
dest() { DESTS="$DESTS
$1"; BEYOND=yes; }
BINDIR='^(/usr/local/(bin|sbin)|/usr/(bin|sbin)|/opt/|(~|\$HOME|\$\{HOME\})/(\.local/bin|bin|go/bin)|\$\(go env GOPATH\)/bin|\$GOBIN|\$GOPATH/bin)'
# priv_if I OPTION...: the program at word I is of the first kind where one
# of the options stands among its words before the judged word, or among all
# its words where the line has none, the value attached by = or standing
# apart, a short option also with its value attached
priv_if() {
  local at="$1" j w o; shift
  j=$at
  while j=$((j + 1)); [ "$j" -lt "$N" ] && { [ "$F" -lt 0 ] || [ "$F" -le "$at" ] || [ "$j" -lt "$F" ]; }; do
    w="${W[$j]}"
    [ "$w" = "--" ] && return 0
    for o in "$@"; do
      case "$w" in "$o"|"$o="*|"$o:"*) BEYOND=yes; PRIV="${PRIV:-${W[$at]##*/}}"; return 0 ;; esac
      case "$o" in -[A-Za-z]) case "$w" in "$o"?*) BEYOND=yes; PRIV="${PRIV:-${W[$at]##*/}}"; return 0 ;; esac ;; esac
    done
  done
  return 0
}
# cond_priv I: the programs of the first kind that run the command as another
# user, a group or the supplementary groups only under an option, since the
# third addendum of 13 October 2026, read over as process control otherwise;
# called for every word before the judged word and for the judged word
cond_priv() {
  local i="$1"
  case "${W[$i]##*/}" in
    setpriv) priv_if "$i" --ruid --euid --reuid --rgid --egid --regid --groups --clear-groups --init-groups ;;
    chpst|runtool) priv_if "$i" -u -U ;;
    xchpst) priv_if "$i" -u -U --user ;;
    psexec|psexec.exe|PsExec|PsExec.exe) priv_if "$i" -s -u -h ;;
    compartment) priv_if "$i" --user --group ;;
    capsh) priv_if "$i" --user --uid --gid --groups ;;
    immortal) priv_if "$i" -u ;;
    dmon) priv_if "$i" -u -U ;;
    minijail0) priv_if "$i" -u -g ;;
    lrun) priv_if "$i" --uid --gid ;;
    tcpserver|unixserver|s6-ipcserver) priv_if "$i" -u -g -U ;;
    tcpsvd|udpsvd) priv_if "$i" -u ;;
    shellinaboxd) priv_if "$i" -s --service ;;
    start-stop-daemon) priv_if "$i" -c --chuid ;;
    spawn-fcgi) priv_if "$i" -u -g ;;
    daemon) priv_if "$i" -u --user ;;
    daemonize) priv_if "$i" -u ;;
    systemd-run) priv_if "$i" --uid --gid ;;
    # pm2 start reads its options behind the script as well, up to --
    pm2) FS=$F; F=-1; priv_if "$i" --uid --gid; F=$FS ;;
  esac
  return 0
}
BRANDED='chrome|msedge|chrome-beta|msedge-beta|chrome-dev|msedge-dev|chrome-canary|msedge-canary'
SHELLS=' sh bash zsh dash ksh mksh ash fish '
while IFS= read -r LINE; do
  [ -n "$LINE" ] || continue
  load "$LINE"
  # The variables and the wrappers before the judged word: an assignment
  # counts for this command, export for every later one, and sudo anywhere
  # before the word stays the user's under every answer, as does every
  # other program that runs the command as an administrator or as another
  # user, the first kind of the group the reader reads over, since 13
  # October 2026 - doas, su, run0, pkexec, runuser, gsudo and login,
  # machinectl with shell and launchctl with asuser behind it, gosu since
  # the third addendum of that day, setpriv where one of its options sets
  # another user, a group or the supplementary groups and not otherwise,
  # and sg, which always sets another group, since the same addendum,
  # every program of the first kind the searches of that addendum found,
  # and those of them that run the command as another user only under an
  # option, through priv_if, each listed below and in the head of
  # bin/devloop-command-reader, and runas with the
  # programs that hand Windows a command line, which are the judged word
  # itself, since that command line is read by nobody here - on a line with
  # no judged word, su -c with its shell text say, anywhere on it.
  VARS="$EXPORTS"
  i=0
  while [ "$i" -lt "$N" ] && { [ "$F" -lt 0 ] || [ "$i" -lt "$F" ]; }; do
    case "${W[$i]}" in
      [A-Za-z_]*=*) case "${W[$i]%%=*}" in *[!A-Za-z0-9_]*) ;; *) VARS="$VARS
${W[$i]}" ;; esac ;;
      *) case "${W[$i]##*/}" in
           sudo) BEYOND=yes; SUDO=yes ;;
           doas|su|run0|pkexec|runuser|gsudo|login|gosu|pbrun|dzdo|ksu|addo|asroot|autologin|cado|doas-keepenv|dosr|gasroot|kdesu|key2root|lxdoas|lxqt-sudo|lxsu|lxsudo|oslo-rootwrap|please|qsudo|qt-sudo|rdo|really|run-as|s6-applyuidgid|s6-setuidgid|sg|setuid|setuidgid|ShellRunas|shellrunas|su-exec|su-rs|sudo-cli|sudo-request|sudo-rs|super|sux|syca|tsudo|voix|xdg-su|xfsudo|xuserrun|yas|RunFromProcess|RunFromProcess.exe) BEYOND=yes; PRIV="${PRIV:-${W[$i]##*/}}" ;;
           security) [ "${W[$((i + 1))]:-}" = execute-with-privileges ] && { BEYOND=yes; PRIV="${PRIV:-security}"; } ;;
           sv) [ "${W[$((i + 1))]:-}" = shell ] && { BEYOND=yes; PRIV="${PRIV:-sv}"; } ;;
           nircmd|nircmd.exe) case "${W[$((i + 1))]:-}" in elevate|runas|runassystem|elevatecmd) BEYOND=yes; PRIV="${PRIV:-nircmd}" ;; esac ;;
           machinectl) [ "${W[$((i + 1))]:-}" = shell ] && { BEYOND=yes; PRIV="${PRIV:-machinectl}"; } ;;
           launchctl) [ "${W[$((i + 1))]:-}" = asuser ] && { BEYOND=yes; PRIV="${PRIV:-launchctl}"; } ;;
           *) cond_priv "$i" ;;
         esac ;;
    esac
    i=$((i + 1))
  done
  [ "$F" -ge 0 ] || continue
  # the judged word itself, where it hands on a command of its own as a line
  # of its own - start-stop-daemon -c with --exec and -- say
  cond_priv "$F"
  V1="${W[$((F + 1))]:-}"; [ $((F + 1)) -lt "$N" ] || V1=""
  V2="${W[$((F + 2))]:-}"; [ $((F + 2)) -lt "$N" ] || V2=""
  V3="${W[$((F + 3))]:-}"; [ $((F + 3)) -lt "$N" ] || V3=""
  case "$NAME" in
    runas|RunAsTI|MinSudo|elevate|wsudox|win-sudo|xdg-su|su-rs) BEYOND=yes; PRIV="${PRIV:-$NAME}" ;;
    AdvancedRun|AdvancedRun.exe) priv_if "$F" /RunAs ;;
    export)
      j=$F
      while j=$((j + 1)); [ "$j" -lt "$N" ]; do case "${W[$j]}" in [A-Za-z_]*=*) EXPORTS="$EXPORTS
${W[$j]}" ;; esac; done ;;
    source|.)
      # the project's own environment activated: a bare pip or interpreter
      # after it in the same command passes; deactivate anywhere ends that
      case "$V1" in */bin/activate)
        A="${V1%/bin/activate}"
        Vd=$(inside "$A" "$ID")
        [ -n "$Vd" ] && [ -e "$Vd/bin/activate" ] && { ACT="$Vd"; ACTID="$ID"; } ;;
      esac ;;
    deactivate) ACT=""; ACTID=0; DEACT=yes ;;
    brew)
      # install, and since 13 October 2026 reinstall and upgrade, which put a
      # new version at the same place: brew help upgrade and brew help
      # reinstall on this machine, "Upgrade outdated, unpinned packages" and
      # "Uninstall and then reinstall a formula or cask"
      case "$V1" in
        install|reinstall|upgrade|add|use|tap) item brew "" ;;
        exec|x) RUN="$RUN brew-exec"; BEYOND=yes ;;
        bundle)
          # brew bundle with no subcommand, with install or upgrade, or with
          # --install on any subcommand, where --file, --upgrade-formulae,
          # --upgrade-formula and --jobs may carry a separate value
          SUB=""; INST=no; j=$((F + 1))
          while j=$((j + 1)); [ "$j" -lt "$N" ]; do
            w="${W[$j]}"
            case "$w" in --install) INST=yes ;; --file|--upgrade-formulae|--upgrade-formula|--jobs) j=$((j + 1)) ;; -*) ;; *) [ -n "$SUB" ] || SUB="$w" ;; esac
          done
          case "$SUB" in ''|install|upgrade) RUN="$RUN brew-bundle"; BEYOND=yes ;; *) [ "$INST" = yes ] && { RUN="$RUN brew-bundle"; BEYOND=yes; } ;; esac ;;
      esac ;;
    # The system package managers, each with every subcommand its vendor
    # documents as installing or replacing a package, read since 13 October
    # 2026 and named with its source in the roadmap addendum of that day; an
    # update puts a new version at the same place, and the record holds for it
    # as for the first install.
    port) case "$V1" in install|upgrade|selfupdate|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    apt) case "$V1" in install|reinstall|upgrade|full-upgrade|dist-upgrade|build-dep|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    apt-get) case "$V1" in install|upgrade|dist-upgrade|build-dep|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    yum|dnf)
      case "$V1" in
        install|in|install-n|install-na|install-nevra|localinstall|reinstall|rei|upgrade|up|update|upgrade-to|update-to|localupdate|upgrade-minimal|distro-sync|dsync|distrosync|distribution-synchronization|downgrade|dg|swap|groupinstall|groupupdate|add|use|tap) item "sys:$NAME" "" ;;
        group) case "$V2" in install|upgrade) item "sys:$NAME" "" ;; esac ;;
      esac ;;
    zypper) case "$V1" in install|in|update|up|dist-upgrade|dup|patch|install-new-recommends|inr|source-install|si|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    pacman)
      # -S installs from the repositories and -U from a file; a -S cluster
      # with s, i, l, g, p, w or c searches, lists, prints, downloads or cleans
      case "$V1" in
        --sync|--upgrade|-U*|install|add|use|tap) item "sys:$NAME" "" ;;
        -S*) case "$V1" in -S*[silgpwc]*) ;; *) item "sys:$NAME" "" ;; esac ;;
      esac ;;
    apk) case "$V1" in add|upgrade|fix|install|use|tap) item "sys:$NAME" "" ;; esac ;;
    snap) case "$V1" in install|refresh|revert|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    choco) case "$V1" in install|upgrade|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    winget) case "$V1" in install|add|upgrade|update|import|use|tap) item "sys:$NAME" "" ;; esac ;;
    scoop) case "$V1" in install|update|add|use|tap) item "sys:$NAME" "" ;; esac ;;
    # The version managers, each with every subcommand its vendor documents
    # as installing a tool, read since 13 October 2026. mise exec and x are
    # not among them since the second addendum of that day: a command is an
    # installation only where it names one, and the tools mise fetches
    # before it runs the command are a side effect the reader reads over,
    # as it reads over every program of the group.
    sdk) case "$V1" in install|i|upgrade|ug|selfupdate|add|use|tap) item "ver:$NAME" "" ;; esac ;;
    asdf) case "$V1" in install|add|use|tap) item "ver:$NAME" "" ;; plugin) case "$V2" in add|install) item "ver:$NAME" "" ;; esac ;; esac ;;
    mise|rtx) case "$V1" in install|i|use|u|upgrade|up|self-update|install-into|add|tap) item "ver:$NAME" "" ;; esac ;;
    rustup)
      case "$V1" in
        install|update|add|use|tap) item "ver:$NAME" "" ;;
        toolchain) [ "$V2" = install ] && item "ver:$NAME" "" ;;
        component|target) [ "$V2" = add ] && item "ver:$NAME" "" ;;
        self) [ "$V2" = update ] && item "ver:$NAME" "" ;;
      esac ;;
    nvm|fnm) case "$V1" in install|add|use|tap) item "ver:$NAME" "" ;; esac ;;
    volta) case "$V1" in install|fetch|add|use|tap) item "ver:$NAME" "" ;; esac ;;
    conda)
      case "$V1" in install|update|upgrade|create|add|use|tap) item "unread:conda" "" ;; esac ;;
    nix)
      case "$V1" in
        profile) case "$V2" in install|add|upgrade) item "unread:nix profile" "" ;; esac ;;
        run|shell) RUN="$RUN nix"; BEYOND=yes ;;
        env) [ "$V2" = shell ] && { RUN="$RUN nix"; BEYOND=yes; } ;;
      esac ;;
    nix-env)
      # --install, -i with any letters behind it, --upgrade and -u put a
      # package into the user's profile, wherever the operation stands among
      # the options
      j=$F
      while j=$((j + 1)); [ "$j" -lt "$N" ]; do case "${W[$j]}" in --install|-i*|--upgrade|-u*) item "unread:nix-env" ""; break ;; esac; done ;;
    nix-shell)
      # -p or --packages puts the packages named into the store and runs the
      # shell with them, a fetch-and-run form since 13 October 2026; without
      # it the shell of the project's own shell.nix, which is no install
      j=$F
      while j=$((j + 1)); [ "$j" -lt "$N" ]; do case "${W[$j]}" in -p|--packages) RUN="$RUN nix-shell"; BEYOND=yes; break ;; esac; done ;;
    pkgx)
      # pkgm "fully installs pkgx packages to /usr/local/", the vendor's README
      [ "$V1" = install ] && dest "/usr/local" ;;
    pkgm)
      # pkgm install "installs latest node to ~/.local. ie. you get
      # ~/.local/bin/node", and pkgm update "updates ~/.local packages to
      # latest versions", the README of pkgxdev/pkgm, read 13 October 2026;
      # under sudo both land in /usr/local, and sudo blocks before the place
      case "$V1" in install|i|update|up) dest '~/.local/bin' ;; esac ;;
    gh)
      case "$V1" in extension|extensions|ext) case "$V2" in install|upgrade)
        # gh keeps its extensions under its data directory, $XDG_DATA_HOME/gh
        # or ~/.local/share/gh, config.go of cli/go-gh; upgrade since 13
        # October 2026, "Upgrade installed extensions", gh extension --help here
        X=$(moved XDG_DATA_HOME); [ -n "$X" ] || X="${XDG_DATA_HOME:-}"
        case "$X" in INSIDE) ;; UNREAD) UNREAD="$UNREAD; gh extension (where it puts things is not read off this machine by this guard)"; BEYOND=yes ;; '') dest "$HOME/.local/share/gh/extensions" ;; *) dest "$X/gh/extensions" ;; esac ;; esac ;; esac ;;
    deno)
      # deno install -g: the root from --root, DENO_INSTALL_ROOT or
      # $HOME/.deno, the executables in its bin unless it ends on bin
      if [ "$V1" = install ] && has -g --global; then
        R=$(value --root)
        if [ -n "$R" ]; then X=$(inside "$R" "$ID"); [ -n "$X" ] && R=INSIDE || { X=$(expand "$R"); [ -n "$X" ] && R="$X" || R=UNREAD; }
        else R=$(moved DENO_INSTALL_ROOT); [ -n "$R" ] || R="$HOME/.deno"; fi
        case "$R" in INSIDE) ;; UNREAD) UNREAD="$UNREAD; deno (where it puts things is not read off this machine by this guard)"; BEYOND=yes ;; */bin) dest "$R" ;; *) dest "$R/bin" ;; esac
      elif [ "$V1" = upgrade ]; then
        # deno upgrade replaces the deno executable itself, at --output or
        # where the deno found on this hook's PATH stands, since 13 October
        # 2026: "Upgrade deno executable to given version", docs.deno.com
        R=$(value --output -o)
        if [ -n "$R" ]; then X=$(inside "$R" "$ID"); [ -n "$X" ] || { X=$(expand "$R"); if [ -n "$X" ]; then dest "${X%/*}"; else UNREAD="$UNREAD; deno upgrade (where it puts things is not read off this machine by this guard)"; BEYOND=yes; fi; }
        else X=$(command -v deno 2>/dev/null); if [ -n "$X" ]; then dest "${X%/*}"; else UNREAD="$UNREAD; deno upgrade (deno is not found on this hook's PATH, so the executable it replaces cannot be placed)"; BEYOND=yes; fi; fi
      fi ;;
    dotnet)
      # dotnet tool install -g lands in $HOME/.dotnet/tools; --tool-path as
      # written; without either it is a local tool of the project
      if [ "$V1" = tool ] && { [ "$V2" = install ] || [ "$V2" = update ]; }; then
        if has -g --global; then dest "$HOME/.dotnet/tools"
        elif has --tool-path; then R=$(value --tool-path); X=$(inside "$R" "$ID"); [ -n "$X" ] || { X=$(expand "$R"); [ -n "$X" ] && dest "$X" || { UNREAD="$UNREAD; dotnet tool (where it puts things is not read off this machine by this guard)"; BEYOND=yes; }; }
        fi
      fi ;;
    gem)
      case "$V1" in
        install|update|add|use|tap)
          # update since 13 October 2026, "Update installed gems to the latest
          # version", with the same options as install, gem help update here
          if has -i --install-dir --build-root; then item gem installdir
          elif [ -n "$(value -n --bindir)" ]; then item gem "bindir=$(value -n --bindir)"
          elif has --user-install; then item gem user
          else item gem ""; fi ;;
        exec) RUN="$RUN gem-exec"; BEYOND=yes ;;
      esac ;;
    cargo)
      # binstall, "a drop-in replacement for cargo install" with the same
      # options, and install-update of cargo-update, which updates through
      # cargo install, since 13 October 2026, each landing where cargo
      # install lands
      case "$V1" in install|binstall|install-update|use|tap) item cargo "root=$(value --root)" ;; esac ;;
    go)
      case "$V1" in
        install|add|use|tap) item go "" ;;
        run)
          # go run whose package carries a version suffix: the options
          # before the package read over, with the value of the build flags
          # that take one and of -exec
          j=$((F + 1)); PKG=""
          while j=$((j + 1)); [ "$j" -lt "$N" ]; do
            w="${W[$j]}"
            case "$w" in
              -C|-p|-covermode|-coverpkg|-asmflags|-buildmode|-compiler|-gccgoflags|-gcflags|-installsuffix|-ldflags|-mod|-modfile|-overlay|-pgo|-pkgdir|-tags|-toolexec|-exec|--C|--p|--covermode|--coverpkg|--asmflags|--buildmode|--compiler|--gccgoflags|--gcflags|--installsuffix|--ldflags|--mod|--modfile|--overlay|--pgo|--pkgdir|--tags|--toolexec|--exec) j=$((j + 1)) ;;
              -*) ;;
              *) PKG="$w"; break ;;
            esac
          done
          case "$PKG" in ''|@*) ;; *@*) RUN="$RUN go-run"; BEYOND=yes ;; esac ;;
      esac ;;
    pipx)
      # upgrade, upgrade-all, reinstall, reinstall-all and install-all since 13
      # October 2026, each placing the entry points again, pipx --help here
      case "$V1" in
        install|install-all|upgrade|upgrade-all|reinstall|reinstall-all|add|use|tap) if has --global; then item pipx global; else item pipx ""; fi ;;
        run) RUN="$RUN pipx-run"; BEYOND=yes ;;
      esac ;;
    uvx) RUN="$RUN uvx"; BEYOND=yes ;;
    uv)
      case "$V1" in
        tool) case "$V2" in install|upgrade) item "uv tool" "" ;; run) RUN="$RUN uvx"; BEYOND=yes ;; esac ;;
        run)
          # uv run with --with, -w, --with-editable or --with-requirements
          # among uv's own options before the command, never behind it: the
          # first word that is neither an option nor the value of one is the
          # command; an option with a separate value that is not in the list
          # ends the reading, the command then passing, by the rule "In doubt,
          # a run with nobody there is not blocked" in docs/skill-conventions.md
          j=$((F + 1))
          while j=$((j + 1)); [ "$j" -lt "$N" ]; do
            w="${W[$j]}"
            case "$w" in
              --) break ;;
              --with|-w|--with-editable|--with-requirements|--with=*|--with-editable=*|--with-requirements=*) RUN="$RUN uv-run-with"; BEYOND=yes; break ;;
              -p|--python|--project|--directory|--package|--extra|--group|--only-group|--no-group|--env-file|--index|--default-index|-i|--index-url|--extra-index-url|-f|--find-links|--config-file|--cache-dir) j=$((j + 1)) ;;
              --*=*) ;;
              --*) ;;
              -?) ;;
              *) break ;;
            esac
          done ;;
        pip) [ "$V2" = install ] && PIPS="${PIPS:-}
uvpip$US$ID$US" ;;
      esac ;;
    npm)
      # every form npm reads as a global install: install and its aliases
      # with -g, --global, --location=global or -L global anywhere among the
      # options, -g inside a cluster of short options, or npm_config_global
      # or npm_config_location set before the command; the prefix from
      # --prefix or -C, the location to install global items
      VERB=""; GLOB=no; PFX=""; j=$F
      while j=$((j + 1)); [ "$j" -lt "$N" ]; do
        w="${W[$j]}"
        case "$w" in
          -g|--global|--global=true|--location=global|-L=global) GLOB=yes ;;
          --location|-L) [ "${W[$((j + 1))]:-}" = global ] && GLOB=yes; j=$((j + 1)) ;;
          --prefix|-C) PFX="${W[$((j + 1))]:-}"; j=$((j + 1)) ;;
          --prefix=*) PFX="${w#--prefix=}" ;;
          -C?*) PFX="${w#-C}" ;;
          --*=*|--*) ;;
          -[A-Za-z]*) case "$w" in *g*) GLOB=yes ;; esac ;;
          *) [ -n "$VERB" ] || VERB="$w" ;;
        esac
      done
      case "$(var npm_config_global)$(var NPM_CONFIG_GLOBAL)" in *true*|*1*) GLOB=yes ;; esac
      case "$(var npm_config_location)$(var NPM_CONFIG_LOCATION)" in *global*) GLOB=yes ;; esac
      # update with its aliases since 13 October 2026, "If the -g flag is
      # specified, this command will update globally installed packages",
      # npm help update on this machine, npm 11.12.1
      case "$VERB" in install|i|add|in|ins|inst|insta|instal|isnt|isnta|isntal|isntall|update|u|up|upgrade|udpate) [ "$GLOB" = yes ] && item npm "prefix=$PFX" ;; esac ;;
    pnpm|pn)
      case "$V1" in
        install|i|add|update|up|upgrade)
          # update, up and upgrade with -g since 13 October 2026, "Update
          # global packages", pnpm.io/cli/update
          if has -g --global; then
            if [ "$NAME" = pn ]; then RUN="$RUN pn-global"; BEYOND=yes; else item pnpm ""; fi
          fi ;;
        global) case "$V2" in add|install|update|upgrade) item pnpm "" ;; esac ;;
        dlx|create) RUN="$RUN pnpm-dlx"; BEYOND=yes ;;
        *)
          # options before dlx or create: --package, --allow-build and -C or
          # --dir with a separate value, any other without
          j=$F
          while j=$((j + 1)); [ "$j" -lt "$N" ]; do
            w="${W[$j]}"
            case "$w" in --package|--allow-build|-C|--dir) j=$((j + 1)) ;; -*) ;; dlx|create) RUN="$RUN pnpm-dlx"; BEYOND=yes; break ;; *) break ;; esac
          done ;;
      esac ;;
    pnpx|pnx) RUN="$RUN pnpm-dlx"; BEYOND=yes ;;
    yarn)
      case "$V1" in
        global) case "$V2" in add|install|upgrade) item yarn "prefix=$(value --prefix)" ;; esac ;;
        install|i|add) has -g --global && item yarn "prefix=$(value --prefix)" ;;
        dlx|create) RUN="$RUN yarn-dlx"; BEYOND=yes ;;
      esac ;;
    bun)
      case "$V1" in install|i|add|update|up) has -g --global && item bun "" ;; esac ;;
    cp|mv|install|ln)
      j=$F
      while j=$((j + 1)); [ "$j" -lt "$N" ]; do printf '%s' "${W[$j]}" | grep -qE "$BINDIR" && { WRITES=yes; dest "${W[$j]}"; }; done ;;
    make)
      # make install: a destination the command itself writes - PREFIX,
      # prefix, DESTDIR, BINDIR, bindir or exec_prefix as a variable on the
      # make line, before or behind install - is taken as written; where
      # none stands there, the makefile decides
      if has install; then
        MD=no; j=$F
        while j=$((j + 1)); [ "$j" -lt "$N" ]; do case "${W[$j]}" in PREFIX=?*|prefix=?*|DESTDIR=?*|BINDIR=?*|bindir=?*|exec_prefix=?*|EXEC_PREFIX=?*) MD=yes; dest "${W[$j]#*=}" ;; esac; done
        [ "$MD" = yes ] || { UNREAD="$UNREAD; make install (its destination is not in the command: no PREFIX, DESTDIR or BINDIR written on the make line, so the makefile decides)"; BEYOND=yes; }
      fi ;;
    pip|pip3)
      [ "$V1" = install ] && PIPS="${PIPS:-}
pip$US$ID$US${W[$F]}" ;;
    python|python[0-9]*)
      [ "$V1" = -m ] && [ "$V2" = pip ] && [ "$V3" = install ] && PIPS="${PIPS:-}
py$US$ID$US${W[$F]}" ;;
  esac
  # A build flag or a download aimed at a bin directory: -o with the path
  # separate or attached, in any command.
  j=$F
  while j=$((j + 1)); [ "$j" -lt "$N" ]; do
    w="${W[$j]}"
    if [ "$w" = "-o" ]; then printf '%s' "${W[$((j + 1))]:-}" | grep -qE "$BINDIR" && { WRITES=yes; dest "${W[$((j + 1))]}"; }
    else case "$w" in -o*) printf '%s' "${w#-o}" | grep -qE "$BINDIR" && { WRITES=yes; dest "${w#-o}"; } ;; esac; fi
  done
  # Browsers for tests, since 8 October 2026: the named install commands
  # whose vendors document a destination outside the repository. playwright
  # install in every form the vendor documents - bare or behind any runner,
  # by a path, as python -m playwright, as the .NET playwright.ps1, as the
  # Java CLI through mvn with exec.args - cypress install, and puppeteer
  # browsers install, with or without a version behind puppeteer; the first
  # such form in a command is read, the words behind its verb its arguments.
  # --dry-run and --list on playwright install install nothing and set
  # nothing here, and neither does the help, which is --help and -h on
  # playwright install, playwright install-deps and cypress install, and
  # --help alone on puppeteer browsers install and on @puppeteer/browsers
  # install, whose -h is no help; a branded channel is installed by
  # Playwright at the system's own location, over the browser already there;
  # install-deps, --with-deps and --install-deps install system packages,
  # which needs root; both stay the user's under every answer.
  # @puppeteer/browsers install is read for --install-deps alone: without it
  # the download lands in the current directory, the default of its --path,
  # and a --path to a place outside is not read.
  BV=""; BA=""; BR=""
  j=$F
  while [ "$j" -lt "$N" ]; do
    w="${W[$j]}"; b="${w##*/}"; b="${b%%@*}"
    case "$w" in exec.mainClass=com.microsoft.playwright.CLI|-Dexec.mainClass=com.microsoft.playwright.CLI) BR=playwright ;; esac
    if [ "$BR" = playwright ] && [ -z "$BV" ]; then case "$w" in exec.args=*|-Dexec.args=*) A="${w#*exec.args=}"; BV="${A%% *}"; case "$A" in *' '*) BA=" ${A#* }" ;; *) BA="" ;; esac; break ;; esac; fi
    case "$b" in
      playwright|playwright.ps1) case "${W[$((j + 1))]:-}" in install|install-deps) BR=playwright; BV="${W[$((j + 1))]}"; k=$((j + 1)); while k=$((k + 1)); [ "$k" -lt "$N" ]; do BA="$BA ${W[$k]}"; done; break ;; esac ;;
      cypress) [ "${W[$((j + 1))]:-}" = install ] && { BR=cypress; BV=install; k=$((j + 1)); while k=$((k + 1)); [ "$k" -lt "$N" ]; do BA="$BA ${W[$k]}"; done; break; } ;;
      puppeteer) [ "${W[$((j + 1))]:-}" = browsers ] && [ "${W[$((j + 2))]:-}" = install ] && { BR=puppeteer; BV=install; k=$((j + 2)); while k=$((k + 1)); [ "$k" -lt "$N" ]; do BA="$BA ${W[$k]}"; done; break; } ;;
      browsers) [ "${w%/*}" = "@puppeteer" ] && [ "${W[$((j + 1))]:-}" = install ] && { BR=puppeteer-pkg; BV=install; k=$((j + 1)); while k=$((k + 1)); [ "$k" -lt "$N" ]; do BA="$BA ${W[$k]}"; done; break; } ;;
    esac
    j=$((j + 1))
  done
  if [ -n "$BV" ]; then
    case "$BR:$BV" in
      playwright:install)
        if ! printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])(--dry-run|--list|--help|-h)([[:space:]]|$)'; then
          if printf '%s' "$BA" | grep -qE "(^|[[:space:]])($BRANDED)([[:space:]]|$)"; then BRAND=yes; BEYOND=yes
          elif printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])--with-deps([[:space:]]|$)'; then SYSPKG=yes; BEYOND=yes
          else BROWSER=playwright; fi
        fi ;;
      playwright:install-deps)
        printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])(--dry-run|--help|-h)([[:space:]]|$)' || { BEYOND=yes; SYSPKG=yes; } ;;
      cypress:install)
        printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])(--help|-h)([[:space:]]|$)' || BROWSER=cypress ;;
      puppeteer:install)
        if ! printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])--help([[:space:]]|$)'; then
          if printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])--install-deps([[:space:]]|$)'; then SYSPKG=yes; BEYOND=yes; else BROWSER=puppeteer; fi
        fi ;;
      puppeteer-pkg:install)
        if printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])--install-deps([[:space:]]|$)' && ! printf '%s' "$BA" | grep -qE -- '(^|[[:space:]])--help([[:space:]]|$)'; then BEYOND=yes; SYSPKG=yes; fi ;;
    esac
    # Where the download lands: the vendor's default for the system this
    # guard runs on, read with uname -s, or the place a variable before the
    # command moves it to, since 12 October 2026 - PLAYWRIGHT_BROWSERS_PATH,
    # with 0 for the project's node_modules, CYPRESS_CACHE_FOLDER,
    # PUPPETEER_CACHE_DIR, and XDG_CACHE_HOME on Linux, which Playwright and
    # Cypress read there; a place inside the project opens nothing. The
    # vendors' configuration files are not read. Any other system is not
    # read, and not read is a block. A download that lands inside the project
    # opens nothing and sets nothing here, and what the command brings
    # outside otherwise - sudo before it, another download on the line - stands
    # as it stands, since 13 October 2026.
    if [ -n "${BROWSER:-}" ]; then
      D=""; M=""
      case "$BROWSER" in
        playwright) M=$(moved PLAYWRIGHT_BROWSERS_PATH); [ "$(var PLAYWRIGHT_BROWSERS_PATH)" = 0 ] && M=INSIDE
          [ -n "$M" ] || { [ "$OS" = Linux ] && X=$(moved XDG_CACHE_HOME) && [ -n "$X" ] && { M="$X"; [ "$X" = INSIDE ] || [ "$X" = UNREAD ] || M="$X/ms-playwright"; }; } ;;
        cypress) M=$(moved CYPRESS_CACHE_FOLDER)
          [ -n "$M" ] || { [ "$OS" = Linux ] && X=$(moved XDG_CACHE_HOME) && [ -n "$X" ] && { M="$X"; [ "$X" = INSIDE ] || [ "$X" = UNREAD ] || M="$X/Cypress"; }; } ;;
        puppeteer) M=$(moved PUPPETEER_CACHE_DIR) ;;
      esac
      case "$M" in
        INSIDE) : ;; # inside the project: opens nothing and brings nothing outside
        UNREAD) UNREAD="$UNREAD; $BROWSER (where it puts things is not read off this machine by this guard)"; BEYOND=yes ;;
        '')
          case "$OS" in
            Darwin) case "$BROWSER" in playwright) D='~/Library/Caches/ms-playwright' ;; cypress) D='~/Library/Caches/Cypress' ;; puppeteer) D='~/.cache/puppeteer' ;; esac ;;
            Linux) case "$BROWSER" in playwright) D='~/.cache/ms-playwright' ;; cypress) D='~/.cache/Cypress' ;; puppeteer) D='~/.cache/puppeteer' ;; esac ;;
          esac
          if [ -n "$D" ]; then dest "$D"; else UNREAD="$UNREAD; $BROWSER (where it puts things is not read off this machine by this guard)"; BEYOND=yes; fi ;;
        *) dest "$M" ;;
      esac
      BROWSER=""
    fi
  fi
done <<< "$CMDS"

# A script piped from the network into a shell, in any of its forms: curl or
# wget feeding a shell through a pipe, inside a substitution a shell runs as
# its script - sh -c "$(curl ...)" - inside a process substitution a shell
# reads, or inside eval or source. Read off the relations the reader prints,
# so that a fetch standing beside a shell in no such relation is no script.
while IFS= read -r LINE; do
  [ -n "$LINE" ] || continue
  load "$LINE"
  case "$NAME" in curl|wget) ;; *) continue ;; esac
  # the shell this one feeds through a pipe
  while IFS= read -r L2; do
    IFS="$US" read -r ID2 _ _ PIPE2 FIRST2 WORDS2 <<< "$L2"
    [ "$PIPE2" = "$ID" ] || continue
    [ "$FIRST2" -gt 0 ] || continue
    IFS="$US" read -ra W2 <<< "${WORDS2}${US}x"
    case "$SHELLS" in *" ${W2[$((FIRST2 - 1))]##*/} "*) BEYOND=yes; PIPED=yes ;; esac
  done <<< "$CMDS"
  # the shell, eval or source it stands inside
  P2="$PARENT"
  while [ "$P2" != 0 ] && [ -n "$P2" ]; do
    PN=$(name_of "$P2")
    case "$PN" in sh|bash|zsh|dash|ksh|mksh|ash|fish|eval|source|.) BEYOND=yes; PIPED=yes; break ;; esac
    P2=$(parent_of "$P2")
  done
done <<< "$CMDS"

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
[ "${DEACT:-no}" = yes ] && ACT=""
while IFS="$US" read -r KIND PID T; do
  [ -n "$KIND" ] || continue
  LOCAL=""
  ACTHERE=""
  [ -n "$ACT" ] && [ "$ACTID" -lt "$PID" ] && ACTHERE="$ACT"
  case "$KIND" in
    pip|py)
      case "$T" in # a path, or a bare name
        */*) Vd=$(inside "$T" "$PID"); [ -n "$Vd" ] && LOCAL=yes ;;
        *) [ -n "$ACTHERE" ] && [ -x "$ACTHERE/bin/$T" ] && LOCAL=yes ;;
      esac ;;
    uvpip)
      L=""
      while IFS= read -r L2; do case "$L2" in "$PID$US"*) L="$L2" ;; esac; done <<< "$CMDS"
      load "$L"
      if has --system --python -p --target --prefix --break-system-packages; then :
      elif [ -n "$ACTHERE" ]; then LOCAL=yes
      else
        S=$(inside "." "$PID"); S="${S%/.}"
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
$KIND$US$PID$US$T"
done <<< "${PIPS:-}"
[ "${BEYOND:-no}" = "yes" ] || exit 0

# Only now is the record read: this hook runs on every Bash call, and a command
# that stays inside the repository never gets here. The record is read off the
# default branch as last fetched, never off the working tree, through the same
# program hooks/session-start.sh prints it with. Every failure below is a block
# and names its cause; the one pass is a record saying yes whose places or
# routes name every place this command lands.
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
  elif [ -n "${PRIV:-}" ]; then
    # the wording approved on 13 October 2026, the program named, for every
    # program of the first kind of the group
    CAUSE="it needs $PRIV, which stays the user's under every answer"
  elif [ "${PIPED:-no}" = "yes" ]; then
    CAUSE="it pipes a script from the network into a shell, which stays the user's under every answer"
  elif [ "${BRAND:-no}" = "yes" ]; then
    CAUSE="it installs a branded browser at the system's own location, over the one already there, which stays the user's under every answer"
  elif [ "${SYSPKG:-no}" = "yes" ]; then
    CAUSE="it installs system packages, which needs root and stays the user's under every answer"
  else
    # Where it lands. A route named in the command is asked on this machine,
    # with the command its vendor documents for that, in this hook's own
    # process and on this hook's own PATH, and with the variables before the
    # command that the vendor documents as moving the place handed to that
    # command, since 12 October 2026 - GOBIN and GOPATH, npm_config_prefix,
    # PNPM_HOME, GEM_HOME, PYTHONUSERBASE - so that the route answers as it
    # would for this command, or taken as the place itself where the
    # variable is the bin directory - BUN_INSTALL_BIN, PIPX_BIN_DIR and
    # PIPX_GLOBAL_BIN_DIR, UV_TOOL_BIN_DIR - and CARGO_INSTALL_ROOT and
    # CARGO_HOME read before this hook's own environment: a route not found
    # here, one that answers nothing, or
    # one whose answer is no absolute path counts as not read, and not read
    # is a block. A route the record names by its name opens whatever that
    # route answers here; any other answer is held against the places the
    # record names. A path written in the command is taken as written. A
    # system package manager, a version manager, a make install whose command
    # names no destination, and anything else cannot be read off the command
    # and stay blocked, as before.
    OPENED=no
    absolute() { case "$1" in /*) printf '%s' "$1" ;; esac; }
    place() {
      if printf '%s\n' "$RROUTES" | grep -qxF "$1"; then OPENED=yes; else DESTS="$DESTS
$2"; fi
    }
    gobin() {
      local b p
      b=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} go env GOBIN 2>/dev/null)"); p=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} go env GOPATH 2>/dev/null)"); p="${p%%:*}"
      if [ -n "$b" ]; then echo "$b"; elif [ -n "$p" ]; then echo "$p/bin"; fi
    }
    # cargo cannot be asked on the stable channel - cargo config get is
    # nightly-only - so its root is read in the vendor's order: --root in the
    # command, CARGO_INSTALL_ROOT, install.root in a config file, CARGO_HOME,
    # $HOME/.cargo, and the executables go into its bin; the two variables
    # before the command first, then this hook's own environment. A config
    # file on cargo's search path that sets install.root is not parsed here
    # and blocks.
    cargobin() {
      local r="$1" d f ir ch
      if [ -z "$r" ]; then
        ir=$(var CARGO_INSTALL_ROOT); ch=$(var CARGO_HOME)
        [ -n "$ir" ] && { r=$(expand "$ir"); [ -n "$r" ] || { echo UNREAD; return; }; }
        if [ -z "$r" ]; then
          d="${CWD:-$PROJECT_DIR}"
          while [ -n "$d" ]; do
            for f in "$d/.cargo/config.toml" "$d/.cargo/config"; do
              [ -f "$f" ] && grep -qE '^[[:space:]]*(\[install\]|install\.root[[:space:]]*=)' "$f" && { echo CONFIG; return; }
            done
            [ "$d" = "/" ] && break
            d="${d%/*}"; [ -n "$d" ] || d="/"
          done
          [ -n "$ch" ] && { ch=$(expand "$ch"); [ -n "$ch" ] || { echo UNREAD; return; }; }
          ch="${ch:-${CARGO_HOME:-$HOME/.cargo}}"
          for f in "$ch/config.toml" "$ch/config"; do
            [ -f "$f" ] && grep -qE '^[[:space:]]*(\[install\]|install\.root[[:space:]]*=)' "$f" && { echo CONFIG; return; }
          done
          r="${CARGO_INSTALL_ROOT:-$ch}"
        fi
      fi
      printf '%s/bin' "$r"
    }
    while IFS="$US" read -r R EXTRA VARS; do
      [ -n "$R" ] || continue
      VARS=$(printf '%s' "$VARS" | tr "$RS" '\n')
      case "$R" in
        brew) P=$(absolute "$(brew --prefix 2>/dev/null)"); if [ -n "$P" ]; then place brew "$P/bin"; else UNREAD="$UNREAD; brew (brew --prefix did not answer)"; fi ;;
        go) envs GOBIN GOPATH; P=$(gobin); if [ -n "$ENVFAIL" ]; then UNREAD="$UNREAD; go (where it puts things is not read off this machine by this guard)"; elif [ -n "$P" ]; then place go "$P"; else UNREAD="$UNREAD; go (go env did not answer)"; fi ;;
        npm)
          PFX="${EXTRA#prefix=}"
          if [ -n "$PFX" ]; then X=$(inside "$PFX" "$ID") ; [ -n "$X" ] || { X=$(expand "$PFX"); if [ -n "$X" ]; then place npm "$X/bin"; else UNREAD="$UNREAD; npm (where it puts things is not read off this machine by this guard)"; fi; }
          else
            envs npm_config_prefix NPM_CONFIG_PREFIX
            P=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} npm prefix -g 2>/dev/null)"); if [ -n "$ENVFAIL" ]; then UNREAD="$UNREAD; npm (where it puts things is not read off this machine by this guard)"; elif [ -n "$P" ]; then place npm "$P/bin"; else UNREAD="$UNREAD; npm (npm prefix -g did not answer)"; fi
          fi ;;
        pnpm) envs PNPM_HOME; P=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} pnpm bin -g 2>/dev/null | tail -1)"); if [ -n "$ENVFAIL" ]; then UNREAD="$UNREAD; pnpm (where it puts things is not read off this machine by this guard)"; elif [ -n "$P" ]; then place pnpm "$P"; else UNREAD="$UNREAD; pnpm (pnpm bin -g did not answer)"; fi ;;
        yarn)
          PFX="${EXTRA#prefix=}"
          if [ -n "$PFX" ]; then X=$(inside "$PFX" "$ID"); [ -n "$X" ] || { X=$(expand "$PFX"); if [ -n "$X" ]; then place yarn "$X/bin"; else UNREAD="$UNREAD; yarn (where it puts things is not read off this machine by this guard)"; fi; }
          else P=$(absolute "$(yarn global bin 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place yarn "$P"; else UNREAD="$UNREAD; yarn (yarn global bin did not answer)"; fi; fi ;;
        bun)
          # BUN_INSTALL_BIN is the bin directory itself, taken as written
          M=$(moved BUN_INSTALL_BIN)
          case "$M" in UNREAD) UNREAD="$UNREAD; bun (where it puts things is not read off this machine by this guard)" ;; INSIDE) ;; ?*) place bun "$M" ;; *)
            P=$(absolute "$(bun pm bin -g 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place bun "$P"; else UNREAD="$UNREAD; bun (bun pm bin -g did not answer)"; fi ;; esac ;;
        pipx)
          # PIPX_BIN_DIR and PIPX_GLOBAL_BIN_DIR are the bin directory itself,
          # taken as written: pipx environment answers the value set by the
          # user and not the effective one for the global directory, and
          # creates the directory a handed-over PIPX_BIN_DIR names, measured
          # on 12 October 2026 with pipx 1.17.6; with --global and nothing
          # set, the vendor's default /usr/local/bin
          if [ "$EXTRA" = global ]; then M=$(moved PIPX_GLOBAL_BIN_DIR); [ -n "$M" ] || M="/usr/local/bin"; else M=$(moved PIPX_BIN_DIR); fi
          case "$M" in UNREAD) UNREAD="$UNREAD; pipx (where it puts things is not read off this machine by this guard)" ;; INSIDE) ;; ?*) place pipx "$M" ;; *)
            P=$(absolute "$(pipx environment --value PIPX_BIN_DIR 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place pipx "$P"; else UNREAD="$UNREAD; pipx (pipx environment --value PIPX_BIN_DIR did not answer)"; fi ;; esac ;;
        'uv tool')
          # UV_TOOL_BIN_DIR is the bin directory itself, taken as written
          M=$(moved UV_TOOL_BIN_DIR)
          case "$M" in UNREAD) UNREAD="$UNREAD; uv tool (where it puts things is not read off this machine by this guard)" ;; INSIDE) ;; ?*) place uv "$M" ;; *)
            P=$(absolute "$(uv tool dir --bin 2>/dev/null | tail -1)"); if [ -n "$P" ]; then place uv "$P"; else UNREAD="$UNREAD; uv tool (uv tool dir --bin did not answer)"; fi ;; esac ;;
        cargo) P=$(cargobin "${EXTRA#root=}"); case "$P" in
          CONFIG) UNREAD="$UNREAD; cargo (a config file on cargo's search path sets install.root, which this guard does not read)" ;;
          UNREAD|'') UNREAD="$UNREAD; cargo (its install root could not be read)" ;;
          *) place cargo "$P" ;;
        esac ;;
        gem)
          case "$EXTRA" in
            installdir) UNREAD="$UNREAD; gem (--install-dir or --build-root moves the destination, which this guard does not read)" ;;
            bindir=*) DESTS="${DESTS}
${EXTRA#bindir=}" ;; # --bindir, taken as written
            *)
              envs GEM_HOME
              if [ "$EXTRA" = user ]; then
                P=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} gem environment 2>/dev/null | sed -n 's/^[[:space:]]*- USER INSTALLATION DIRECTORY: //p' | head -1)"); [ -n "$P" ] && P="$P/bin"
              else
                P=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} gem environment 2>/dev/null | sed -n 's/^[[:space:]]*- EXECUTABLE DIRECTORY: //p' | head -1)")
              fi
              if [ -n "$ENVFAIL" ]; then UNREAD="$UNREAD; gem (where it puts things is not read off this machine by this guard)"; elif [ -n "$P" ]; then place gem "$P"; else UNREAD="$UNREAD; gem (gem environment did not answer)"; fi ;;
          esac ;;
        sys:*) UNREAD="$UNREAD; ${R#sys:} (a system package manager: each package decides where it lands, and it needs root, so it stays the user's under every answer)" ;;
        ver:*) UNREAD="$UNREAD; ${R#ver:} (a version manager: what it installs lands in its own tree and reaches shell profiles this guard never reads, so it stays the user's under every answer)" ;;
        *) UNREAD="$UNREAD; ${R#unread:} (where it puts things is not read off this machine by this guard)" ;;
      esac
    done <<< "$ITEMS"
    # pip outside the project: the destination is the scripts directory of
    # the interpreter the command names, asked of that interpreter through
    # sysconfig, the user scheme where --user stands there or PIP_USER before
    # the command, with PYTHONUSERBASE before the command handed to it. A
    # bare pip names no interpreter and cannot be asked; uv pip that reached
    # here names no environment inside the project.
    while IFS="$US" read -r K PID T; do
      [ -n "$K" ] || continue
      case "$K" in
        pip) UNREAD="$UNREAD; $T (a pip outside the project, or one this guard cannot place inside it, names no interpreter, so which Python it installs for is not in the command: run it as python -m pip, or name the project's own pip by a path inside the project)" ;;
        uvpip) UNREAD="$UNREAD; uv pip (it names no environment inside the project: no activation earlier in this command, no .venv from the directory it runs in up to the project root, or --system, --python, --target or --prefix stands there)" ;;
        py)
          L=""
          while IFS= read -r L2; do case "$L2" in "$PID$US"*) L="$L2" ;; esac; done <<< "$CMDS"
          load "$L"
          VARS="$EXPORTS"; i=0
          while [ "$i" -lt "$F" ]; do case "${W[$i]}" in [A-Za-z_]*=*) VARS="$VARS
${W[$i]}" ;; esac; i=$((i + 1)); done
          if has -t --target --prefix --root || [ -n "$(var PIP_TARGET)$(var PIP_PREFIX)$(var PIP_ROOT)" ]; then
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
              envs PYTHONUSERBASE
              if has --user || [ -n "$(var PIP_USER)" ]; then
                P=$(absolute "$(env ${ENVS[@]+"${ENVS[@]}"} "$I" -c 'import sysconfig;print(sysconfig.get_path("scripts",sysconfig.get_preferred_scheme("user")))' 2>/dev/null)")
              else
                P=$(absolute "$("$I" -c 'import sysconfig;print(sysconfig.get_path("scripts"))' 2>/dev/null)")
              fi
              if [ -n "$ENVFAIL" ]; then UNREAD="$UNREAD; $T -m pip (where it puts things is not read off this machine by this guard)"; elif [ -n "$P" ]; then place pip "$P"; else UNREAD="$UNREAD; $T -m pip ($T did not answer where it puts scripts)"; fi
            fi
          fi ;;
      esac
    done <<< "$PIPBEYOND"
    if [ "${WRITES:-no}" = "yes" ]; then
      # a copy or a build flag into a Go bin directory named by go env: asked
      NEWDESTS=""
      while IFS= read -r D; do
        [ -n "$D" ] || continue
        case "$D" in
          '$(go env GOPATH)/bin'*|'$GOPATH/bin'*|'$GOBIN'*) ENVS=(); P=$(gobin); if [ -n "$P" ]; then NEWDESTS="$NEWDESTS
$P"; else UNREAD="$UNREAD; $D (go env did not answer)"; fi ;;
          *) NEWDESTS="$NEWDESTS
$D" ;;
        esac
      done <<< "$DESTS"
      DESTS="$NEWDESTS"
    fi
    UNNAMED=""
    while IFS= read -r D; do
      [ -n "$D" ] || continue
      N2="$D"
      case "$N2" in
        '$HOME'/*|'$HOME') N2="~${N2#\$HOME}" ;;
        '${HOME}'/*|'${HOME}') N2="~${N2#\$\{HOME\}}" ;;
        "$HOME"/*|"$HOME") N2="~${N2#"$HOME"}" ;;
      esac
      HIT=no
      while IFS= read -r P; do
        [ -n "$P" ] || continue
        P="${P%/}"
        case "$N2" in "$P"|"$P"/*) HIT=yes ;; esac
      done <<< "$PLACES"
      [ "$HIT" = yes ] || UNNAMED="$UNNAMED $N2"
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
