#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# A no to every permission prompt while the mark of a run with nobody there
# stands, since 9 October 2026, decision 6 of the roadmap entry of that day:
# nobody is there to answer the prompt, and the run treats the no as it treats
# every refusal, build-work under "A guard's block, with nobody there". The
# mark's third line names the session that wrote it, read off the hook's
# input by hooks/session-start.sh, so that a mark a broken-off session left
# standing touches no later session with a person in it: a third line naming
# another session passes the prompt on unanswered. A mark without a third
# line, or with an empty one, and an input without a session_id, which the
# types of the Agent SDK give as a required field, both answer no, by the
# rule "In doubt, a run with nobody there is not blocked" in
# docs/skill-conventions.md: not standing still is not passing, and the no
# lets the run go on. The project directory is the one every hook of this
# plugin reads. The input is read only once the mark is found to stand,
# through bin/devloop-command-reader, which decodes the JSON, since 12
# October 2026; every hook reads it so, and a check in
# .github/workflows/stock-take.yml holds them to that. The message is
# approved text 5 of 9 October 2026, word for word, in docs/roadmap.md.

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -f ".claude/unattended.local" ] || exit 0

INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
SID=$(printf '%s\n' "$INPUT" | sed -n 's/^session_id: //p' | head -1)
THIRD=$(sed -n '3p' .claude/unattended.local 2>/dev/null)
if [ -n "$SID" ] && [ -n "$THIRD" ] && [ "$THIRD" != "$SID" ]; then
  exit 0
fi
cat <<'MSG'
{"hookSpecificOutput":{"hookEventName":"PermissionRequest","decision":{"behavior":"deny","message":"Refused by devloop: this is a run with nobody there (.claude/unattended.local stands), so no one can answer this permission prompt. Do not try it again or reach the same result another way. In the build, raise an issue carrying this tool call and this refusal, label it raised-here and needs-human, record it as a blocker of the task, then put the task down and take the next one, as \"A guard's block, with nobody there\" in build-work says. Before the build, go on as plan-work says for a question nobody is there to answer, and name this refusal where that order records it."}}}
MSG
exit 0
