#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON, since 12 October 2026; every hook reads it so, and a check in
# .github/workflows/stock-take.yml holds them to that. Only a write to the
# check table is read, and the table is read as it stands after that write:
# PostToolUse runs once the tool has run, so this reports and cannot refuse.
# What refuses is hooks/pre-tool-use-table-guard.sh, at the commit. The path
# is held against the table by the file it names, not by its spelling, so
# that a path through a symbolic link is the same table.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
FILE=$(printf '%s\n' "$INPUT" | sed -n 's/^file: //p' | head -1)
[ -n "$FILE" ] || exit 0
[ "$FILE" -ef "docs/agents/checks.md" ] || exit 0

# The cells are named by the one program both table guards read the table
# with. It answers 1 where a cell carries none of the four forms; any other
# answer names nothing, and nothing is reported.
CELLS=$("$HERE/../bin/devloop-check-table" "docs/agents/checks.md" 2>/dev/null)
[ $? -eq 1 ] || exit 0
LIST=$(printf '%s\n' "$CELLS" | awk 'NR > 1 { printf "; " } { printf "%s", $0 }')

# The sentence on the four forms is the one in shared/status-forms.md; a
# check under "Before a handover, run these" holds this copy to it.
FORMS=$(cat <<'FORMS_END'
A status is `filled`, `empty`, `skipped (state): <the state that keeps the class off>` or `skipped (user): <the user's reason>`.
FORMS_END
)
echo "docs/agents/checks.md now has a status in no allowed form: $LIST. $FORMS The check setup writes this table, so hand the change to it rather than editing the cell. No commit goes through until it is fixed." >&2
exit 2
