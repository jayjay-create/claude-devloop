#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# Two duties since 9 October 2026, both on the permission mode of the session,
# which only a hook's input carries, in the field permission_mode (hooks
# reference, "Common input fields"): no file and no environment variable
# carries it. Beside a call of bin/devloop-permission-mode the hook states the
# mode as additionalContext (hooks reference, "Add context for Claude") where
# the command goes through; that is how a skill reads start condition 4 of
# the mode with nobody there, and the first duty holds in every directory,
# since the reader may be called anywhere. And in a project set up with
# devloop it blocks every command and every write of the editing tool that
# writes the mark of a run with nobody there, .claude/unattended.local, in any
# mode but auto, since such a run begins only where the classifier of auto
# mode answers the prompts nobody is there to answer. A command that calls the
# reader and writes the mark is read like every other, since the addendum of
# 9 October 2026: blocked outside auto, with no statement beside the block,
# and through in auto with the statement. A command that deletes or reads the
# mark passes, and every other command passes without a word. The texts are
# the ones approved on 9 October 2026, in docs/roadmap.md under the entry of
# that day. The input is read through bin/devloop-command-reader, which
# decodes the JSON and takes the command apart as the shell runs it, since
# 12 October 2026; every hook reads it so, and a check in
# .github/workflows/stock-take.yml holds them to that.

INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
MODE=$(printf '%s\n' "$INPUT" | sed -n 's/^permission_mode: //p' | head -1)
# The label the status bar shows for each value: the page "Choose a permission
# mode", "Switch permission modes", the CLI tab, without the characters before
# it. A value that is none of the six is its own label, and another mode than
# auto.
case "$MODE" in
  default) LABEL="manual mode on" ;;
  acceptEdits) LABEL="accept edits on" ;;
  plan) LABEL="plan mode on" ;;
  auto) LABEL="auto mode on" ;;
  dontAsk) LABEL="don't ask on" ;;
  bypassPermissions) LABEL="bypass permissions on" ;;
  *) LABEL="$MODE" ;;
esac

TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
US=$(printf '\037')
TEXT=""
WRITES=no
if [ "$TOOL" = "Bash" ]; then
  # Every command the shell runs, judged at its first word behind the wrappers
  # the reader reads over. The first duty, in every directory: the reader may
  # be called anywhere. The statement is kept for the pass at the end, so that
  # it stands beside the result of a command that went through and beside no
  # block. The mark's path is read as a word ending in .claude/unattended.local,
  # relative or absolute, whatever stands before it - a quoted or variable
  # prefix is part of the word, since the reader hands the word as the shell
  # hands it to the program. A write is a redirection onto that word, with or
  # without a descriptor, behind a simple command or, since 13 October 2026,
  # behind a compound one - a group, a subshell, a loop or an if - which the
  # reader prints as a line of its own, or one of the programs below with the
  # word among its arguments, behind any wrapper the reader reads over,
  # caffeinate say: tee, cp, mv, install, touch, truncate, ln and rsync; sed
  # and perl with -i; dd with of=. Not read, and said so in the roadmap
  # entry of 9 October 2026: a path that does not end in those two names -
  # unattended.local alone after a cd into .claude, .claude/./unattended.local,
  # a path held in a variable alone - a write from inside an interpreter
  # such as python3 -c, and a mv or cp onto the directory.
  while IFS= read -r LINE; do
    case "$LINE" in [0-9]*) ;; *) continue ;; esac
    IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
    [ "$FIRST" -gt 0 ] || FIRST=1
    IFS="$US" read -ra W <<< "${WORDS}${US}x"
    N=$((${#W[@]} - 1))
    F=$((FIRST - 1))
    WORD="${W[$F]##*/}"
    if [ "$WORD" = "devloop-permission-mode" ]; then
      if [ -n "$MODE" ]; then
        TEXT="devloop: the permission mode of this session is $MODE, shown in the status bar as $LABEL."
      else
        TEXT="devloop: the permission mode of this session could not be read: the hook input carried no permission_mode."
      fi
    fi
    case "$LINE" in *unattended.local*) ;; *) continue ;; esac
    INPLACE=no
    i=0
    while [ "$i" -lt "$N" ]; do
      TOK="${W[$i]}"
      NEXT="${W[$((i + 1))]:-}"
      if printf '%s' "$TOK" | grep -qE '^([0-9]*>>?\|?|&>>?)$'; then
        case "$NEXT" in *.claude/unattended.local) WRITES=yes ;; esac; i=$((i + 2)); continue
      fi
      [ "$i" -gt "$F" ] || { i=$((i + 1)); continue; }
      case "$WORD" in
        tee|cp|mv|install|touch|truncate|ln|rsync) case "$TOK" in *.claude/unattended.local) WRITES=yes ;; esac ;;
        sed|perl) case "$TOK" in --in-place|--in-place=*) INPLACE=yes ;; -[A-Za-z]*) case "$TOK" in *i*) INPLACE=yes ;; esac ;; *.claude/unattended.local) [ "$INPLACE" = yes ] && WRITES=yes ;; esac ;;
        dd) case "$TOK" in of=*.claude/unattended.local) WRITES=yes ;; esac ;;
      esac
      i=$((i + 1))
    done
    # sed -i after the file, as in sed -i '' s/a/b/ file, is read once the line is through
    if [ "$INPLACE" = yes ]; then
      i=$F
      while i=$((i + 1)); [ "$i" -lt "$N" ]; do case "${W[$i]}" in *.claude/unattended.local) WRITES=yes ;; esac; done
    fi
  done <<< "$INPUT"
fi

# Every pass leaves through here, with 0: the statement where the command
# called the reader, nothing otherwise.
pass() {
  if [ -n "$TEXT" ]; then
    printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","additionalContext":"%s"}}\n' "$TEXT"
  fi
  exit 0
}

# The second duty, in a project set up with devloop, as the other guards.
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || pass
[ -d "docs/agents" ] || pass

case "$TOOL" in
  Bash) ;;
  Edit|Write|MultiEdit)
    # The editing tool names the file: the mark where its name is
    # unattended.local and its directory is the project's .claude, by the
    # directory's resolved path where both stand, by the spelling otherwise.
    FILE=$(printf '%s\n' "$INPUT" | sed -n 's/^file: //p' | head -1)
    [ "$(basename "$FILE")" = "unattended.local" ] || exit 0
    DIR=$(dirname "$FILE")
    case "$DIR" in /*) ;; *) DIR="$PROJECT_DIR/$DIR" ;; esac
    MARKDIR="$PROJECT_DIR/.claude"
    if [ -d "$DIR" ] && [ -d "$MARKDIR" ]; then
      [ "$(cd "$DIR" && pwd -P)" = "$(cd "$MARKDIR" && pwd -P)" ] && WRITES=yes
    else
      [ "$DIR" = "$MARKDIR" ] && WRITES=yes
    fi
    ;;
  *) exit 0 ;;
esac
[ "$WRITES" = yes ] || pass
[ "$MODE" = auto ] && pass

if [ -n "$MODE" ]; then
  echo "Blocked by devloop: the mark for a run with nobody there is written only in auto mode, and this session is in $MODE, shown in the status bar as $LABEL. Do not write the mark another way. The run with nobody there does not start: tell the user so with the sentence the skill gives for start condition 4, in the next message with which you end your turn with text, and carry on with them." >&2
else
  echo "Blocked by devloop: the mark for a run with nobody there is written only in auto mode, and the permission mode of this session could not be read: the hook input carried no permission_mode. Do not write the mark another way. The run with nobody there does not start: say that the mode could not be read, with this message, in the next message with which you end your turn with text, and carry on with the user." >&2
fi
exit 2
