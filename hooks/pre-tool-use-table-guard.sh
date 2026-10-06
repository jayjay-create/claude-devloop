#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

# hooks.json starts this on Bash(git *), and Claude Code starts a hook
# regardless of that pattern where it cannot tell which commands a call runs,
# so the command is read here as well. On every branch: a cell in no allowed
# form is wrong wherever it is committed. What is read is the table in the
# working tree at this moment, before the command runs: a command that writes
# the table and commits in one go is read before its write, so that one commit
# goes through and the next is refused. Between git and commit may stand
# git's own options, read over since 6 October 2026 as the branch guard reads
# them: -C <path> and -c <name>=<value>, the six options that take a value of
# their own, any other --option, and -p and -P. A word that is no option ends
# the match, as log does in git log --grep commit. Until then git -C
# <directory> commit passed unseen, measured 5 October 2026.
CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
GITOPT='(-[Cc][[:space:]]*[^[:space:]]+|--(git-dir|work-tree|namespace|super-prefix|config-env|exec-path)[[:space:]]+[^[:space:]]+|--[^[:space:]]+|-[pP])'
echo "$CMD" | grep -qE "(^|[^[:alnum:]_-])git([[:space:]]+$GITOPT)*[[:space:]]+commit([[:space:]]|$)" || exit 0
[ -f "docs/agents/checks.md" ] || exit 0

# The cells are named by the one program both table guards read the table
# with. It answers 1 where a cell carries none of the four forms; any other
# answer names nothing, and the commit is not refused.
HERE=$(cd "$(dirname "$0")" && pwd)
CELLS=$("$HERE/../bin/devloop-check-table" "docs/agents/checks.md" 2>/dev/null)
[ $? -eq 1 ] || exit 0
LIST=$(printf '%s\n' "$CELLS" | awk 'NR > 1 { printf "; " } { printf "%s", $0 }')

# The sentence on the four forms is the one in shared/status-forms.md; a
# check under "Before a handover, run these" holds this copy to it.
FORMS=$(cat <<'FORMS_END'
A status is `filled`, `empty`, `skipped (state): <the state that keeps the class off>` or `skipped (user): <the user's reason>`.
FORMS_END
)
echo "Commit refused: docs/agents/checks.md has a status in no allowed form: $LIST. $FORMS The check setup writes this table, so hand the change to it rather than editing the cell." >&2
exit 2
