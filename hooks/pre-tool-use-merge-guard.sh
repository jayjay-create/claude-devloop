#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON and takes the command apart as the shell runs it, since 12 October
# 2026; every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that. gh pr merge is read as the first three words of any
# command the shell runs, behind the wrappers the reader reads over; the same
# words inside a quoted text are a word of their command and no command.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

US=$(printf '\037')
MERGE=no
while IFS= read -r LINE; do
  case "$LINE" in [0-9]*) ;; *) continue ;; esac
  IFS="$US" read -r ID PARENT REL PIPE FIRST WORDS <<< "$LINE"
  [ "$FIRST" -gt 0 ] || continue
  IFS="$US" read -ra W <<< "${WORDS}${US}x"
  F=$((FIRST - 1))
  [ "${W[$F]##*/}" = "gh" ] && [ "${W[$((F + 1))]:-}" = "pr" ] && [ "${W[$((F + 2))]:-}" = "merge" ] && MERGE=yes
done <<< "$INPUT"
[ "$MERGE" = yes ] || exit 0

# The call names the program by ${CLAUDE_PLUGIN_ROOT}, as
# shared/arming-command.md does, and the message carries the plugin's
# directory in its place, as bin/devloop-text does for a shared text: the run
# reads it as a path. Since 17 October 2026.
ROOT=$(cd "$HERE/.." && pwd)
ESC=$(printf '%s\n' "$ROOT" | sed 's/[\&|]/\\&/g')
sed "s|\${CLAUDE_PLUGIN_ROOT}|$ESC|g" >&2 <<'MSG'
Blocked: merging is not yours to perform, in any form. Arm the platform instead, with the program that reads the pull request's state and arms it in one call and cannot merge:
${CLAUDE_PLUGIN_ROOT}/bin/devloop-arm <number>
gh pr merge --auto is not a substitute: the tool drops that flag whenever the pull request is already mergeable and merges on the spot. The program's last line says how it ended. not started: no required check registered in sixty seconds, which is no refusal case at all - run it once more, and if that ends the same, say the gate is there and no check registered in two minutes, not that the pull request is past its gate. behind: fetch, rebase onto the base and force-push, which lands nothing and is no merge, then run it again. no answer: do not arm another way - name the command and the message it printed and hand the merge over on that. A value on a cannot be placed: line is named as it read and made none of the three cases. The three cases: refused:, GitHub's answer on the line before, and where gh api repos/OWNER/REPO -q .allow_auto_merge reads false, auto-merge is switched off on the repository - that field answers this case and no other; no required check:, no gate for it to wait on; past its gate:, a gate this pull request is already past, the required check green and nothing outstanding. Where a gate: line says a query did not answer, say the rights did not allow finding out rather than naming a case. Then hand the user the merge command, say which case it was, and say the stage picks up as soon as they say it has landed - nothing moves here until they say so. With nobody there, past its gate: with a rerun: line is no stop at first, foreign: lines beside it or not: restart once each run its rerun: lines name, gh run rerun <id> without --failed and without --job, then run the program again, and GitHub merges, never you; past its gate: again after that, or with no rerun: line, is a stop with the reason named. This holds even if the user just said to merge: their yes authorises the merge, not you performing it.
MSG
exit 2
