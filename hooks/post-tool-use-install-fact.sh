#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# Writes what an install did into docs/agents/environment.md, since 21
# October 2026, cluster 18 of milestone 3 as the person decided it on 20 and
# 21 October 2026: after every Bash call that
# hooks/pre-tool-use-install-guard.sh let through under a record saying yes
# as an install outside the project, and that succeeded, one line per install
# under the heading "## Installed outside the project" - the install command
# as whoever clones the project runs it, without the redirections of the
# call, and the folder it installed into, no date - and a line that stands
# there already is not written a second time. The guard reads the command
# and where it lands at PreToolUse and leaves the facts through
# bin/devloop-install-note, keyed by the session and the tool call; this hook
# reads no command and resolves no place itself, so that there is one
# reading, the guard's, and since 24 October 2026 it writes the line through
# that program too, which holds where the line goes and how it reads, and
# which the run calls for an install the person ran on a handover, defect 4
# of the roadmap entry of that day on the six closing runs. Registered under
# PostToolUse and under PostToolUseFailure, both with the matcher Bash:
# PostToolUse fires only after a call that succeeded - measured on 21
# October 2026 under Claude Code 2.1.305, a command that exits other than 0
# reaches PostToolUseFailure with "Exit code N" - and a call whose
# tool_response says interrupted writes nothing.
# Since 24 October 2026, the person's decision of that day on point 8, the
# call's exit counts as the install's only where the install stood alone in
# its call, the one command at the top level and none reading its output,
# which the guard notes: there the line is written as before, and where the
# install sent its output away, into a file or /dev/null, the context says so
# with the redirection. Where it did not stand alone - behind | tail, before
# ; echo ok, before || true, each of which gives the call exit 0 whether the
# install went through or not, measured that day in bash and in zsh - no
# line is written: the context, under either event, tells the run to read
# the folder and write the line through the program, and an install alone
# in a call that failed is dropped without a word. The input is read through
# bin/devloop-command-reader, which decodes the JSON, since 12 October 2026;
# every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that. Where the line cannot be written - the tree on the
# default branch, which the branch guard holds unchanged for the editing
# tool by design, or docs/agents/environment.md missing in the working tree -
# the program refuses, and the hook says so with exit 2, which on
# PostToolUse shows stderr to the run while the tool has already run, and
# carries the line, so that the run can put it where it belongs; it blocks
# nothing. Where it wrote, it hands the run the line as context.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
EVENT=$(printf '%s\n' "$INPUT" | sed -n 's/^event: //p' | head -1)
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0
SID=$(printf '%s\n' "$INPUT" | sed -n 's/^session_id: //p' | head -1)
TUID=$(printf '%s\n' "$INPUT" | sed -n 's/^tool_use_id: //p' | head -1)
[ -n "$SID" ] && [ -n "$TUID" ] || exit 0
NOTE="$HERE/../bin/devloop-install-note"
case "$EVENT" in
  PostToolUse|PostToolUseFailure) ;;
  *) "$NOTE" drop "$SID" "$TUID"; exit 0 ;;
esac
INTERRUPTED=$(printf '%s\n' "$INPUT" | sed -n 's/^interrupted: //p' | head -1)
if [ "$INTERRUPTED" = "true" ]; then "$NOTE" drop "$SID" "$TUID"; exit 0; fi
FACTS=$("$NOTE" take "$SID" "$TUID") || exit 0
[ -n "$FACTS" ] || exit 0

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0
FILE="docs/agents/environment.md"
HEADING='## Installed outside the project'
US=$(printf '\037')
NL=$'\n'
# The program as the run types it to write a line, a home directory written
# as ~, each argument in single quotes.
CALL="$(cd "$HERE/../bin" && pwd)/devloop-install-note"
if [ -n "${HOME:-}" ] && [ "$HOME" != "/" ]; then
  case "$CALL" in "$HOME"/*) CALL="~${CALL#"$HOME"}" ;; esac
fi
q() { printf "'%s'" "$(printf '%s' "$1" | sed "s/'/'\\\\''/g")"; }
json() { printf '%s' "$1" | sed 's/\\/\\\\/g; s/"/\\"/g' | awk '{ gsub(/\t/, "\\t"); printf "%s%s", (NR > 1 ? "\\n" : ""), $0 }'; }

WRITTEN=""; AWAY=""; CTX=""; ERR=""
while IFS="$US" read -r D C A R; do
  [ -n "$D" ] && [ -n "$C" ] || continue
  if [ "$A" != "alone" ]; then
    # the wording approved on 24 October 2026
    CTX="$CTX${CTX:+$NL}[InstallFact] not written: \`$C\` was not the last command of its call, or another command read its output, so the call's exit is not the install's and this hook cannot tell whether it went through. Read whether the tool stands in $D; where it does, write its line with $CALL put $(q "$D") $(q "$C"). Say in the report that the output of the install was not read whole, and run the next install alone in its call."
    continue
  fi
  [ "$EVENT" = "PostToolUse" ] || continue
  [ -n "$R" ] && AWAY="$R"
  OUT=$("$NOTE" put "$D" "$C" 2>&1)
  if [ $? -ne 0 ]; then
    ERR="$ERR${ERR:+$NL}Not written: the install went through, and ${OUT#Not written: }"
  else
    case "$OUT" in "written: "*) WRITTEN="$WRITTEN${WRITTEN:+ }${OUT#written: }" ;; esac
  fi
done <<< "$FACTS"
# the wording approved on 24 October 2026, behind the line written or the
# line not written, where the install alone sent its output away
SENT=""
[ -n "$AWAY" ] && SENT=". The output of this install was sent away ($AWAY), so what the package manager did besides is not known from it: say so in the report."
if [ -n "$ERR" ]; then
  printf '%s\n' "$ERR$SENT${CTX:+$NL$CTX}" >&2
  exit 2
fi
[ -n "$WRITTEN" ] && CTX="[InstallFact] written into $FILE under \"$HEADING\", on this branch, by the hook and not by you: $WRITTEN$SENT${CTX:+$NL$CTX}"
[ -n "$CTX" ] || exit 0
printf '{"hookSpecificOutput":{"hookEventName":"%s","additionalContext":"%s"}}\n' "$EVENT" "$(json "$CTX")"
exit 0
