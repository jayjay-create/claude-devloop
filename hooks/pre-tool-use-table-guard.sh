#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON and takes the command apart as the shell runs it, since 12 October
# 2026; every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that. hooks.json starts this on every Bash call since 13
# October 2026, with no if field, since the vendor calls that filter
# best-effort and it looks behind no sh -c and no runner; the command is
# read here, in every form the reader takes apart. On every branch:
# a cell in no allowed form is wrong wherever it is committed. What is read
# is the table in the working tree at this moment, before the command runs:
# a command that writes the table and commits in one go is read before its
# write, so that one commit goes through and the next is refused. git commit
# is read as the words of any command the shell runs, behind the wrappers:
# git, then git's own options, read over since 6 October 2026 as the branch
# guard reads them - -C <path> and -c <name>=<value>, with or without a
# space, the six that take a value of their own, any other --option, and -p
# and -P - then commit. git commit inside a quoted text is a word of its
# command and no command.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

# The index of git's command among the words W, from the index of git; 1 on
# the exit where none stands, as in hooks/pre-tool-use-branch-guard.sh.
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
COMMIT=no
while IFS= read -r LINE; do
  case "$LINE" in [0-9]*) ;; *) continue ;; esac
  IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
  [ "$FIRST" -gt 0 ] || continue
  IFS="$US" read -ra W <<< "${WORDS}${US}x"
  F=$((FIRST - 1))
  [ "${W[$F]##*/}" = "git" ] || continue
  C=$(git_command "$F") || continue
  [ "${W[$C]}" = "commit" ] && COMMIT=yes
done <<< "$INPUT"
[ "$COMMIT" = yes ] || exit 0
[ -f "docs/agents/checks.md" ] || exit 0

# The cells are named by the one program both table guards read the table
# with. It answers 1 where a cell carries none of the four forms; any other
# answer names nothing, and the commit is not refused.
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
