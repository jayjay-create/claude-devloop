#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# Blocks every command that sets the identity of a commit itself, in a project
# set up with devloop, since 9 October 2026: a commit carries the identity git
# config gives and no other, and an address taken from the session's context
# becomes public with the push - the four commits of the order before this one
# were made with git -c user.email and an address GitHub holds as private for
# the account, and the push was refused, GH007. Read on every Bash call, in
# every command the shell runs, taken apart by bin/devloop-command-reader as
# the install guard and the mark guard read a command since 12 October 2026:
# git with -c or --config-env for user.name, user.email, author.name,
# author.email, committer.name or committer.email, the key in any mixture of
# upper and lower case, as git reads it, and only between git and its
# command, as the branch guard reads git's own options - git commit -c
# <commit> takes a message and the authorship of that commit and is not read
# here; --author at git commit, where --reset-author passes and --author at
# git log and every other command that filters by it passes; the variables
# GIT_AUTHOR_NAME, GIT_AUTHOR_EMAIL, GIT_COMMITTER_NAME and
# GIT_COMMITTER_EMAIL set before a command, with env, sudo or export too;
# EMAIL set so in a command that calls git, since git takes EMAIL where
# user.email is not set; GIT_CONFIG_KEY_<n> set to one of the keys; and git
# config writing, setting or removing one of the keys, in the forms git
# config <key> <value>, --add, --replace-all, --unset, --unset-all, set and
# unset, and a section named user, author or committer behind
# --remove-section or --rename-section, where reading passes: git config
# <key>, --get, get, --list, list, and the other reading options. A word
# inside a quoted text is a word of its command, so git -c "user.email=x" is
# read and git commit -m "use git -c user.email" is not. Measured on 9
# October 2026 with git 2.50.1: author.name, author.email, committer.name
# and committer.email overwrite user.name and user.email; without user.email
# git takes EMAIL; User.Email reads as user.email. Not read, and said so in
# the roadmap entry of 9 October 2026: a configuration file written with the
# editing tool, with git config --edit or by another program; include.path;
# GIT_CONFIG_GLOBAL, GIT_CONFIG_SYSTEM, GIT_CONFIG_PARAMETERS, HOME,
# XDG_CONFIG_HOME and the other detours that point git at another file; a
# git alias; git commit -c or -C <commit>, which takes the author of that
# commit; git am, cherry-pick, rebase and the other commands that carry an
# author over from a patch or a commit; a key held in a variable alone. The
# message is the one approved on 9 October 2026, its last sentence the one
# approved on 28 October 2026 - NAME theirs to fill in and ADDRESS the
# noreply address of their account, built from gh api user, their own
# allowed instead, the commit made again once git config gives both - and,
# approved the same day after the branch was pushed, where created_at of
# that call lies before 18 July 2017, the note that GitHub gives an account
# that old the address only once its email privacy is switched off and on
# again, with GitHub's email addresses reference, read first and given in
# its own words where it says otherwise by then; the hooks of devloop do not
# fire on a command typed with !, measured that day, so this guard does not
# block the line there, where it blocks it when the run calls it - in place
# of the sentence approved on 10 October 2026, git taking an identity from
# the machine or refusing - word for word in docs/roadmap-archive-1.md under
# the entry of 9 October 2026, its addendum of 10 October 2026 and the entry
# of 28 October 2026 on the handover steps, <what was read> filled with the
# form read, without its value. Since 20 November 2026, the second part of
# order (4) of milestone 12, that last sentence changes by decisions (2),
# (5), (8), (9) and (14) of the roadmap entry of 20 November 2026 on the
# handover by surface, the three sentences before it standing word for word:
# the identity is handed over as one line, the two commands joined by &&,
# where it was two commands, each with ! in front, after the first of which
# the run had its turn while user.email was not set; the message has the run
# say what decision (9) has said with the line; and where the line is typed
# follows the surface and the system - bin/devloop-surface is called here, on
# the path that blocks and hands over, and at no other command this hook
# reads, and its field handover: decides: terminal, in Claude Code with ! in
# front and with the sentence that has them type their word right after the
# command; desktop, the same without that sentence; panel, windows and
# unknown, the line without the ! in a terminal, that of VS Code for
# instance, in Git Bash, or in a terminal and nothing more, with the request
# to say here once it is through; a line that does not come, or one of
# another form, is read as unknown. Every block leaves through the lines at
# the end, so that the message stands once, with what was read filled in,
# and the block's record in docs/stock-take.tsv stands on the one exit line.

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON and takes the command apart as the shell runs it, since 12 October
# 2026; every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

# The six keys, in any mixture of upper and lower case, as git reads them.
KEY='([Uu][Ss][Ee][Rr]|[Aa][Uu][Tt][Hh][Oo][Rr]|[Cc][Oo][Mm][Mm][Ii][Tt][Tt][Ee][Rr])\.([Nn][Aa][Mm][Ee]|[Ee][Mm][Aa][Ii][Ll])'
SECTION='([Uu][Ss][Ee][Rr]|[Aa][Uu][Tt][Hh][Oo][Rr]|[Cc][Oo][Mm][Mm][Ii][Tt][Tt][Ee][Rr])'
# The index of git's command among the words W, from the index of git; 1 on
# the exit where none stands. Git's own options between git and its command,
# as the branch guard reads them.
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
US=$(printf '\037')
HASGIT=no
while IFS= read -r LINE; do
  case "$LINE" in [0-9]*) ;; *) continue ;; esac
  IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
  [ "$FIRST" -gt 0 ] || continue
  IFS="$US" read -ra W <<< "${WORDS}${US}x"
  [ "${W[$((FIRST - 1))]##*/}" = "git" ] && HASGIT=yes
done <<< "$INPUT"

READ=""
while IFS= read -r LINE; do
  [ -z "$READ" ] || break
  case "$LINE" in [0-9]*) ;; *) continue ;; esac
  IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
  IFS="$US" read -ra W <<< "${WORDS}${US}x"
  N=$((${#W[@]} - 1))
  F=$((FIRST - 1))
  NAME=""
  [ "$FIRST" -gt 0 ] && NAME="${W[$F]##*/}"
  # The four variables and EMAIL, set before the command or by export; GIT_CONFIG_KEY_<n> on a key.
  i=0
  while [ "$i" -lt "$N" ]; do
    TOK="${W[$i]}"
    if [ "$FIRST" -gt 0 ] && [ "$i" -ge "$F" ] && [ "$NAME" != "export" ]; then break; fi
    [ "$i" -ne "$F" ] || { i=$((i + 1)); continue; }
    case "$TOK" in
      GIT_AUTHOR_NAME=*|GIT_AUTHOR_EMAIL=*|GIT_COMMITTER_NAME=*|GIT_COMMITTER_EMAIL=*) READ="${TOK%%=*}"; break ;;
      EMAIL=*) if [ "$HASGIT" = yes ]; then READ="EMAIL"; break; fi ;;
      GIT_CONFIG_KEY_[0-9]*=*) if printf '%s' "${TOK#*=}" | grep -qE "^$KEY\$"; then READ="${TOK%%=*}=${TOK#*=}"; break; fi ;;
    esac
    i=$((i + 1))
  done
  [ -z "$READ" ] || continue # one of the four variables, EMAIL beside git, or GIT_CONFIG_KEY_<n> on a key
  [ "$NAME" = "git" ] || continue
  # -c and --config-env between git and its command.
  j=$F
  while j=$((j + 1)); [ "$j" -lt "$N" ]; do
    TOK="${W[$j]}"
    case "$TOK" in
      -c) if printf '%s' "${W[$((j + 1))]:-}" | grep -qE "^$KEY="; then READ="-c ${W[$((j + 1))]%%=*}"; fi; j=$((j + 1)) ;;
      -c*) if printf '%s' "${TOK#-c}" | grep -qE "^$KEY="; then READ="-c${TOK#-c}"; READ="${READ%%=*}"; fi ;;
      --config-env) if printf '%s' "${W[$((j + 1))]:-}" | grep -qE "^$KEY="; then READ="--config-env ${W[$((j + 1))]%%=*}"; fi; j=$((j + 1)) ;;
      --config-env=*) if printf '%s' "${TOK#--config-env=}" | grep -qE "^$KEY="; then READ="${TOK%%=*}=${TOK#--config-env=}"; READ="${READ%=*}"; fi ;;
      -C|--git-dir|--work-tree|--namespace|--super-prefix|--exec-path) j=$((j + 1)) ;;
      -C*|--*|-p|-P) ;;
      *) break ;;
    esac
    [ -z "$READ" ] || break
  done
  [ -z "$READ" ] || continue # -c or --config-env on a key
  C=$(git_command "$F") || continue
  # --author at git commit.
  if [ "${W[$C]}" = "commit" ]; then
    j=$C
    while j=$((j + 1)); [ "$j" -lt "$N" ]; do
      case "${W[$j]}" in --author|--author=*) READ="--author"; break ;; esac
    done
    [ -z "$READ" ] || continue
  fi
  # git config writing, setting or removing a key, where reading passes.
  if [ "${W[$C]}" = "config" ]; then
    FORM="git config"
    K=""
    NVAL=0
    WRITES=no
    READS=no
    SKIP=no
    j=$C
    while j=$((j + 1)); [ "$j" -lt "$N" ]; do
      TOK="${W[$j]}"
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
      if printf '%s' "$K" | grep -qE "^$KEY\$"; then
        if [ "$WRITES" = yes ] || [ "$NVAL" -gt 0 ]; then READ="$FORM $K"; continue; fi
      elif [ "$WRITES" = yes ] && printf '%s' "$K" | grep -qE "^$SECTION\$"; then
        READ="$FORM $K"; continue
      fi
    fi
  fi
done <<< "$INPUT"

[ -n "$READ" ] || exit 0

# The form and the place of the handover, read on this path alone.
HANDOVER=$("$HERE/../bin/devloop-surface" 2>/dev/null | sed -n 's/^surface: [a-z-]* | system: [a-z]* | handover: \([a-z]*\)$/\1/p') || HANDOVER=""
LINE="git config --global user.name \"NAME\" && git config --global user.email \"ADDRESS\""
# What the run asks for where the command still runs in the background: under terminal their word once more, under desktop, where the handover had them type no word, decision (12), the request to say here once the command is through, point 3 of decision (8); the same handover once more follows a command interrupted and a command that stands nowhere, not one in the background, decision (14)
case "$HANDOVER" in desktop) AGAIN="that they say here once the command is through" ;; *) AGAIN="that they type „fertig“ once more as soon as it is through" ;; esac
SIGNS="Go on from the first of two signs, the command's output once you are given it to answer, or their word, and commit again once git config gives both; where it does not give both then, say that the command did not set them only where the conversation shows that the command ran to its end, and otherwise say what you see - that the command still runs in the background, and $AGAIN, or that it was interrupted, or that no command and no output stands here, and after either of these two the same handover once more"
WORD="Ask them to say here once the command is through, without that request where nobody is there, and commit again once git config gives both"
case "$HANDOVER" in
  terminal)
    WHERE="to type here in Claude Code with ! in front"
    LINE="! $LINE"
    AFTER="Directly before that last sentence have them type „fertig“, the word as their language has it, right after the command, without that sentence where nobody is there. $SIGNS." ;;
  desktop)
    WHERE="to type here in Claude Code with ! in front"
    LINE="! $LINE"
    AFTER="Have them type no word after the command. $SIGNS." ;;
  panel)
    WHERE="to type in a terminal, for instance the terminal of VS Code, and not here in Claude Code, without a ! in front"
    AFTER="$WORD." ;;
  windows)
    WHERE="to type in Git Bash, the terminal that comes with Git for Windows, which the text has them open, and not here in Claude Code, without a ! in front"
    AFTER="$WORD." ;;
  *)
    WHERE="to type in a terminal and not here in Claude Code, without a ! in front"
    AFTER="$WORD." ;;
esac

echo "Blocked by devloop: this command sets the identity of a commit itself — $READ — instead of using the one git config gives. Commit with that identity, and do not set another one another way: not with git -c, --author, the variables GIT_AUTHOR_…, GIT_COMMITTER_…, EMAIL or GIT_CONFIG_…, and not with git config user.name or user.email. Not with an address from your session's context either: what stands in a commit becomes public with the push. Where git config gives no identity, git takes one from the machine or refuses to commit; then hand the user the one line that sets both, the two commands joined by &&, $WHERE: $LINE, with NAME theirs to fill in and ADDRESS the noreply address GitHub gives their account, built from gh api user as ID+LOGIN@users.noreply.github.com. Say with it, before the line, that their commits need a name and an email address and git knows none on this machine yet, that what stands in a commit becomes public with the push, which is why you propose the address GitHub provides for that, and that this address does not reveal their own; with the line, that they put their name in and that the line holds for every project on this machine; after the line, the note that they may put their own address there instead and that it then stands public in every commit; where created_at of that same call lies before 18 July 2017, say after that note that their account is older than that day and that GitHub gives an account that old this address only once its email privacy is switched off and on again, as GitHub's email addresses reference says, https://docs.github.com/en/account-and-profile/reference/email-addresses-reference, giving that link, which you read first and whose own words you give where they now say otherwise; and last, that once the command is through you check that git knows both and commit again. $AFTER" >&2
exit 2
