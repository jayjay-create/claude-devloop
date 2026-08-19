#!/bin/bash
set -uo pipefail
INPUT=$(cat)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
echo "$CMD" | grep -qE '(^|[^[:alnum:]_-])gh[[:space:]]+pr[[:space:]]+merge([[:space:]]|$)' || exit 0
echo "$CMD" | grep -q -- '--auto' && exit 0

echo "Blocked: merging directly. The platform merges, not you — add --auto so it lands once the gates pass, or hand the pull request to the user and say the stage continues as soon as it does. This holds even if the user just said to merge: their yes authorises the merge, not you performing it. If auto-merge is switched off on this repository, that is the case for handing it over." >&2
exit 2
