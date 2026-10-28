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
# The handover it asks for is shared/merge-handover.md's, every duty of it in
# the message and none of its reasons, since the addendum of 18 October 2026
# to the roadmap entry of that day on the merge handover; the gate read where
# no gate: line stands, and the restart only with auto-merge on, since its
# second addendum; the command typed in Claude Code with ! in front and the
# stage going on from its output in the conversation, not from their word,
# since 28 October 2026, the roadmap entry of that date on the handover
# steps, (6).
ROOT=$(cd "$HERE/.." && pwd)
ESC=$(printf '%s\n' "$ROOT" | sed 's/[\&|]/\\&/g')
sed "s|\${CLAUDE_PLUGIN_ROOT}|$ESC|g" >&2 <<'MSG'
Blocked: merging is not yours to perform, in any form. Arm the platform instead, with the program that reads the pull request's state and arms it in one call and cannot merge:
${CLAUDE_PLUGIN_ROOT}/bin/devloop-arm <number>
gh pr merge --auto is not a substitute: the tool drops that flag whenever the pull request is already mergeable and merges on the spot. The program's last line says how it ended. not started: no required check registered in sixty seconds, which is no refusal case at all - run it once more, and if that ends the same, say the gate is there and no check registered in two minutes, not that the pull request is past its gate. behind: fetch, rebase onto the base and force-push, which lands nothing and is no merge, then run it again. no answer: do not arm another way - name the command and the message it printed and hand the merge over on that. A value on a cannot be placed: line is named as it read and made none of the three cases. The three cases: refused:, GitHub's answer on the line before, and where a gate stands and gh api repos/OWNER/REPO -q .allow_auto_merge reads false, auto-merge is switched off on the repository - that field answers this case and no other, and past its gate: with the field false is this case too; no required check:, no gate for it to wait on, whatever the field reads; past its gate:, a gate this pull request is already past, the required check green and nothing outstanding. Whether a gate stands is read off the gate: lines, or, where the program printed none, off gh api repos/OWNER/REPO/branches/main/protection - a 404 means none only with Branch not protected in its body - and gh api repos/OWNER/REPO/rules/branches/main, a gate found by either being a gate. Where a gate: line says a query did not answer, or neither of those two answered, say the rights did not allow finding out rather than naming a case. Then hand the user the merge in one text, in their language: that the pull request, named by its title, is open; say which case it was, in the one sentence on why GitHub does not merge it itself; hand them the merge command, to type here in Claude Code with ! in front, in a code block of its own with the ! and with no --delete-branch:
! gh pr merge <number> --squash --repo OWNER/REPO
and say that as soon as it is in the stage goes on and nothing moves here until then - the command's output in the conversation is what the stage goes on from, the person saying nothing, since 28 October 2026, not their word. That text stands last in the message that ends the turn, what else the turn owes them before it and nothing beside it or after it - no second question, no proposal, nothing on what comes after the merge - and nothing in it as if something had gone wrong. Whether it landed is then read off gh pr view <number> --json state,mergedAt, MERGED with a time in it, never off the output alone and never off their word. With nobody there, that text stands among what is theirs to do in the last message instead; past its gate: with a rerun: line, the field reading true, is no stop at first, foreign: lines beside it or not: restart once each run its rerun: lines name, gh run rerun <id> without --failed and without --job, then run the program again, and GitHub merges, never you; past its gate: again after that, or with no rerun: line, is a stop with the reason named, and that text then carries no sentence on the case. This holds even if the user just said to merge: their yes authorises the merge, not you performing it.
MSG
exit 2
