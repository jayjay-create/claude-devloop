#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

# Blocks every command that sets the identity of a commit itself, in a project
# set up with devloop, since 9 October 2026: a commit carries the identity git
# config gives and no other, and an address taken from the session's context
# becomes public with the push - the four commits of the order before this one
# were made with git -c user.email and an address GitHub holds as private for
# the account, and the push was refused, GH007. Read on every Bash call, in
# every segment of the command between &, |, ; and parentheses, as the install
# guard and the mark guard read a command: git with -c or --config-env for
# user.name, user.email, author.name, author.email, committer.name or
# committer.email, the key in any mixture of upper and lower case, as git reads
# it, and only between git and its command, as the branch guard reads git's own
# options - git commit -c <commit> takes a message and the authorship of that
# commit and is not read here; --author at git commit, where --reset-author
# passes and --author at git log and every other command that filters by it
# passes; the variables GIT_AUTHOR_NAME, GIT_AUTHOR_EMAIL, GIT_COMMITTER_NAME
# and GIT_COMMITTER_EMAIL set in the command, with env or export too; EMAIL set
# in a command that calls git, since git takes EMAIL where user.email is not
# set; GIT_CONFIG_KEY_<n> set to one of the keys; and git config writing,
# setting or removing one of the keys, in the forms git config <key> <value>,
# --add, --replace-all, --unset, --unset-all, set and unset, and a section
# named user, author or committer behind --remove-section or --rename-section,
# where reading passes: git config <key>, --get, get, --list, list, and the
# other reading options. Measured on 9 October 2026 with git 2.50.1:
# author.name, author.email, committer.name and committer.email overwrite
# user.name and user.email; without user.email git takes EMAIL; User.Email
# reads as user.email. Not read, and said so in the roadmap entry of 9 October
# 2026: a configuration file written with the editing tool, with git config
# --edit or by another program; include.path; GIT_CONFIG_GLOBAL,
# GIT_CONFIG_SYSTEM, GIT_CONFIG_PARAMETERS, HOME, XDG_CONFIG_HOME and the other
# detours that point git at another file; a git alias; git commit -c or -C
# <commit>, which takes the author of that commit; git am, cherry-pick, rebase
# and the other commands that carry an author over from a patch or a commit; a
# key held in a variable alone. The message is the one approved on 9 October
# 2026, its last sentence the one approved on 10 October 2026 - git takes an
# identity from the machine or refuses - word for word in docs/roadmap.md under
# the entry of 9 October 2026 and its addendum of 10 October 2026, <what was
# read> filled with the form read, without its value. Every block leaves
# through the two lines at the end, since a line routed through a function
# stands in no search set of the stock-take.

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)

# The six keys, in any mixture of upper and lower case, as git reads them.
KEY='([Uu][Ss][Ee][Rr]|[Aa][Uu][Tt][Hh][Oo][Rr]|[Cc][Oo][Mm][Mm][Ii][Tt][Tt][Ee][Rr])\.([Nn][Aa][Mm][Ee]|[Ee][Mm][Aa][Ii][Ll])'
SECTION='([Uu][Ss][Ee][Rr]|[Aa][Uu][Tt][Hh][Oo][Rr]|[Cc][Oo][Mm][Mm][Ii][Tt][Tt][Ee][Rr])'
# Git's own options between git and its command, as the branch guard reads them.
GITOPT='(-[Cc][[:space:]]*[^[:space:]]+|--(git-dir|work-tree|namespace|super-prefix|config-env|exec-path)[[:space:]]+[^[:space:]]+|--[^[:space:]]+|-[pP])'
GIT="(^|[^[:alnum:]_-])git([[:space:]]+$GITOPT)*[[:space:]]+"

HASGIT=no
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])git([[:space:]]|$)' && HASGIT=yes

READ=""
SEGS=$(printf '%s' "$CMD" | tr '&|;()' '\n\n\n\n\n')
set -f
while IFS= read -r SEG; do
  [ -z "$READ" ] || break
  # The four variables, set anywhere in the command, and EMAIL where the
  # command calls git.
  V=$(printf '%s' "$SEG" | grep -oE '(^|[[:space:]])GIT_(AUTHOR|COMMITTER)_(NAME|EMAIL)=' | head -1 | sed -E 's/^[[:space:]]*//; s/=$//')
  if [ -n "$V" ]; then READ="$V"; continue; fi # one of the four variables
  if [ "$HASGIT" = yes ] && printf '%s' "$SEG" | grep -qE '(^|[[:space:]])EMAIL='; then READ="EMAIL"; continue; fi
  V=$(printf '%s' "$SEG" | grep -oE "(^|[[:space:]])GIT_CONFIG_KEY_[0-9]+='?$KEY" | head -1 | sed -E "s/^[[:space:]]*//; s/'//")
  if [ -n "$V" ]; then READ="$V"; continue; fi # GIT_CONFIG_KEY_<n> on a key
  case "$SEG" in *git*) ;; *) continue ;; esac
  # -c and --config-env between git and its command.
  OPTS=$(printf '%s' "$SEG" | grep -oE "(^|[^[:alnum:]_-])git([[:space:]]+$GITOPT)*([[:space:]]|$)")
  V=$(printf '%s' "$OPTS" | grep -oE -- "(^|[[:space:]])(-c[[:space:]]*|--config-env(=|[[:space:]]+))'?$KEY=" | head -1 | sed -E "s/^[[:space:]]*//; s/'//; s/=$//; s/[[:space:]]+/ /g")
  if [ -n "$V" ]; then READ="$V"; continue; fi # -c or --config-env on a key
  # --author at git commit.
  if printf '%s' "$SEG" | grep -qE "${GIT}commit([[:space:]]|$)"; then
    ARGS=$(printf '%s' "$SEG" | sed -E "s/.*${GIT}commit//")
    if printf '%s' "$ARGS" | grep -qE '(^|[[:space:]])--author(=|[[:space:]]|$)'; then READ="--author"; continue; fi
  fi
  # git config writing, setting or removing a key, where reading passes.
  if printf '%s' "$SEG" | grep -qE "${GIT}config([[:space:]]|$)"; then
    ARGS=$(printf '%s' "$SEG" | sed -E "s/.*${GIT}config//")
    FORM="git config"
    K=""
    NVAL=0
    WRITES=no
    READS=no
    SKIP=no
    for TOK in $ARGS; do
      if [ "$SKIP" = yes ]; then SKIP=no; FORM="$FORM $TOK"; continue; fi
      case "$TOK" in
        --add|--replace-all|--unset|--unset-all|--remove-section|--rename-section) WRITES=yes; FORM="$FORM $TOK" ;;
        --get|--get-all|--get-regexp|--get-urlmatch|--get-color|--get-colorbool|--list|-l|--edit|-e|--show-origin|--show-scope|--name-only) READS=yes ;;
        -f|--file|--blob|--type|--default) SKIP=yes; FORM="$FORM $TOK" ;;
        -*) FORM="$FORM $TOK" ;;
        *)
          if [ -z "$K" ]; then
            case "$TOK" in
              set|unset|remove-section|rename-section) WRITES=yes; FORM="$FORM $TOK" ;;
              get|list|edit) READS=yes ;;
              *) K="$TOK" ;;
            esac
          else
            NVAL=$((NVAL + 1))
          fi ;;
      esac
    done
    if [ "$READS" = no ] && [ -n "$K" ]; then
      if printf '%s' "$K" | grep -qE "^'?$KEY\$"; then
        if [ "$WRITES" = yes ] || [ "$NVAL" -gt 0 ]; then READ="$FORM $K"; continue; fi
      elif [ "$WRITES" = yes ] && printf '%s' "$K" | grep -qE "^'?$SECTION\$"; then
        READ="$FORM $K"; continue
      fi
    fi
  fi
done <<< "$SEGS"
set +f

[ -n "$READ" ] || exit 0

echo "Blocked by devloop: this command sets the identity of a commit itself — $READ — instead of using the one git config gives. Commit with that identity, and do not set another one another way: not with git -c, --author, the variables GIT_AUTHOR_…, GIT_COMMITTER_…, EMAIL or GIT_CONFIG_…, and not with git config user.name or user.email. Not with an address from your session's context either: what stands in a commit becomes public with the push. Where git config gives no identity, git takes one from the machine or refuses to commit; then hand the user the two commands git config --global user.name and git config --global user.email, to run with values of their own choosing." >&2
exit 2
