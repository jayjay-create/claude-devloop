#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

# Two duties since 9 October 2026, both on the permission mode of the session,
# which only a hook's input carries, in the field permission_mode (hooks
# reference, "Common input fields"): no file and no environment variable
# carries it. Beside a call of bin/devloop-permission-mode the hook states the
# mode as additionalContext (hooks reference, "Add context for Claude") and
# decides nothing over the call; that is how a skill reads start condition 4
# of the mode with nobody there. And it blocks every command and every write
# of the editing tool that writes the mark of a run with nobody there,
# .claude/unattended.local, in any mode but auto, since such a run begins only
# where the classifier of auto mode answers the prompts nobody is there to
# answer. A command that deletes or reads the mark passes, and every other
# command passes without a word. The texts are the ones approved on 9 October
# 2026, in docs/roadmap.md under the entry of that day.

MODE=$(echo "$INPUT" | sed -n 's/.*"permission_mode"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
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

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
CMD=""
if [ "$TOOL" = "Bash" ]; then
  CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
  # The first duty, in every directory: the reader may be called anywhere.
  if echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])devloop-permission-mode([[:space:]]|$)'; then
    if [ -n "$MODE" ]; then
      TEXT="devloop: the permission mode of this session is $MODE, shown in the status bar as $LABEL."
    else
      TEXT="devloop: the permission mode of this session could not be read: the hook input carried no permission_mode."
    fi
    printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","additionalContext":"%s"}}\n' "$TEXT"
    exit 0
  fi
fi

# The second duty, in a project set up with devloop, as the other guards.
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

WRITES=no
case "$TOOL" in
  Bash)
    # The mark's path is read as a token ending in .claude/unattended.local,
    # relative or absolute, whatever stands before it - the tool's JSON has
    # been decoded above, so a quoted or variable prefix has become a space or
    # stands as written. A write is a redirection onto that token, with or
    # without a descriptor, or one of the programs below with the token among
    # its arguments: tee, cp, mv, install, touch, truncate, ln and rsync; sed
    # and perl with -i; dd with of=. Not read, and said so in the roadmap
    # entry of 9 October 2026: a path that does not end in those two names -
    # unattended.local alone after a cd into .claude, .claude/./unattended.local,
    # a path held in a variable alone - a write from inside an interpreter
    # such as python3 -c, a program behind sudo, command or exec, and a mv or
    # cp onto the directory. The segments are the command's parts between
    # &, |, ; and parentheses, as the install guard reads them.
    P='[^[:space:]]*\.claude/unattended\.local([[:space:]]|$)'
    SEGS=$(printf '%s' "$CMD" | tr '&|;()' '\n\n\n\n\n')
    while IFS= read -r SEG; do
      case "$SEG" in *unattended.local*) ;; *) continue ;; esac
      if echo "$SEG" | grep -qE "(^|[[:space:]]|[0-9])>>?\|?[[:space:]]*$P"; then WRITES=yes; continue; fi
      WORD=$(printf '%s' "$SEG" | sed -E 's/^[[:space:]]*//; s/^([A-Za-z_][A-Za-z0-9_]*=[^[:space:]]*[[:space:]]+)*//; s/[[:space:]].*$//')
      WORD=${WORD##*/}
      case "$WORD" in
        tee|cp|mv|install|touch|truncate|ln|rsync)
          echo "$SEG" | grep -qE "[[:space:]]$P" && WRITES=yes ;;
        sed|perl)
          echo "$SEG" | grep -qE "[[:space:]](-[A-Za-z]*i|--in-place)" && echo "$SEG" | grep -qE "[[:space:]]$P" && WRITES=yes ;;
        dd)
          echo "$SEG" | grep -qE "[[:space:]]of=$P" && WRITES=yes ;;
      esac
    done <<< "$SEGS"
    ;;
  Edit|Write|MultiEdit)
    # The editing tool names the file: the mark where its name is
    # unattended.local and its directory is the project's .claude, by the
    # directory's resolved path where both stand, by the spelling otherwise.
    FILE=$(echo "$INPUT" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
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
[ "$WRITES" = yes ] || exit 0
[ "$MODE" = auto ] && exit 0

if [ -n "$MODE" ]; then
  echo "Blocked by devloop: the mark for a run with nobody there is written only in auto mode, and this session is in $MODE, shown in the status bar as $LABEL. Do not write the mark another way. The run with nobody there does not start: tell the user so with the sentence the skill gives for start condition 4, and carry on with them." >&2
else
  echo "Blocked by devloop: the mark for a run with nobody there is written only in auto mode, and the permission mode of this session could not be read: the hook input carried no permission_mode. Do not write the mark another way. The run with nobody there does not start: say that the mode could not be read, with this message, and carry on with the user." >&2
fi
exit 2
