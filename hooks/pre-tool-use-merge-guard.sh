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
# second addendum. The form and the place of the handover follow the surface
# and the system, since 20 November 2026, the second part of order (4) of
# milestone 12, decisions (2), (4), (5), (8), (12) and (14) of the roadmap
# entry of 20 November 2026 on the handover by surface: bin/devloop-surface is
# called here, on the path that hands the merge over, and at no other command
# this hook reads, and its field handover: decides - terminal, the command
# typed in Claude Code with ! in front and the sentence that has them type
# their word right after it; desktop, the same without that sentence; panel,
# windows and unknown, the command without the ! typed in a terminal, that of
# VS Code for instance, in Git Bash, or in a terminal and nothing more, with
# the request to say here once it is through. A line that does not come, or
# one of another form, is read as unknown. Under form A the stage goes on
# from the first of two signs, the answered output or their word; from 28
# October 2026 until that day the message had the command typed with ! on
# every surface and every system and the stage go on from the output alone,
# the person saying nothing.
HANDOVER=$("$HERE/../bin/devloop-surface" 2>/dev/null | sed -n 's/^surface: [a-z-]* | system: [a-z]* | handover: \([a-z]*\)$/\1/p') || HANDOVER=""
LINE="gh pr merge <number> --squash --repo OWNER/REPO"
SIGNS="the stage goes on from the first of two signs, the command's output once you are given it to answer, or their word"
# What the run asks for where the command still runs in the background: under terminal their word once more, under desktop, where the handover had them type no word, decision (12), the request to say here once the command is through, point 3 of decision (8)
case "$HANDOVER" in desktop) AGAIN="that they say here once the command is through" ;; *) AGAIN="that they type „fertig“ once more as soon as it is through" ;; esac
NOTRUN="Where it has not landed then, say that the command did not merge it only where the conversation shows that the command ran to its end; else say what you see - where the conversation has in the place of the output that the command runs in the background, that it still runs there and the pull request is not merged yet, and $AGAIN; where it shows the command interrupted, or holds no command and no output, that, and that the pull request is not merged yet, and then the same text once more. "
GOES="and say that as soon as it is in the stage goes on and nothing moves here until then"
case "$HANDOVER" in
  terminal)
    WHERE="to type here in Claude Code with ! in front, in a code block of its own with the ! and with no --delete-branch:"
    LINE="! $LINE"
    AFTER="then have them type „fertig“, the word as their language has it, right after the command, in a sentence of its own directly before the last one, $GOES - $SIGNS."
    ALONE=", without the sentence on „fertig“" ;;
  desktop)
    WHERE="to type here in Claude Code with ! in front, in a code block of its own with the ! and with no --delete-branch:"
    LINE="! $LINE"
    AFTER="$GOES - $SIGNS, and the text has them type no word after the command."
    ALONE="" ;;
  panel)
    WHERE="to type in a terminal, for instance the terminal of VS Code, and not here in Claude Code, in a code block of its own without a ! and with no --delete-branch:"
    AFTER="then ask them to say here once the command is through, $GOES - their word is what the stage goes on from."
    NOTRUN=""
    ALONE=", without the request to say here" ;;
  windows)
    WHERE="to type in Git Bash, the terminal that comes with Git for Windows, which the text has them open, and not here in Claude Code, in a code block of its own without a ! and with no --delete-branch:"
    AFTER="then ask them to say here once the command is through, $GOES - their word is what the stage goes on from."
    NOTRUN=""
    ALONE=", without the request to say here" ;;
  *)
    WHERE="to type in a terminal and not here in Claude Code, in a code block of its own without a ! and with no --delete-branch:"
    AFTER="then ask them to say here once the command is through, $GOES - their word is what the stage goes on from."
    NOTRUN=""
    ALONE=", without the request to say here" ;;
esac
ROOT=$(cd "$HERE/.." && pwd)
ESC=$(printf '%s\n' "$ROOT" | sed 's/[\&|]/\\&/g')
{
sed "s|\${CLAUDE_PLUGIN_ROOT}|$ESC|g" <<'MSG'
Blocked: merging is not yours to perform, in any form. Arm the platform instead, with the program that reads the pull request's state and arms it in one call and cannot merge:
${CLAUDE_PLUGIN_ROOT}/bin/devloop-arm <number>
MSG
printf '%s\n' "gh pr merge --auto is not a substitute: the tool drops that flag whenever the pull request is already mergeable and merges on the spot. The program's last line says how it ended. not started: no required check registered in sixty seconds, which is no refusal case at all - run it once more, and if that ends the same, say the gate is there and no check registered in two minutes, not that the pull request is past its gate. behind: fetch, rebase onto the base and force-push, which lands nothing and is no merge, then run it again. no answer: do not arm another way - name the command and the message it printed and hand the merge over on that. A value on a cannot be placed: line is named as it read and made none of the three cases. The three cases: refused:, GitHub's answer on the line before, and where a gate stands and gh api repos/OWNER/REPO -q .allow_auto_merge reads false, auto-merge is switched off on the repository - that field answers this case and no other, and past its gate: with the field false is this case too; no required check:, no gate for it to wait on, whatever the field reads; past its gate:, a gate this pull request is already past, the required check green and nothing outstanding. Whether a gate stands is read off the gate: lines, or, where the program printed none, off gh api repos/OWNER/REPO/branches/main/protection - a 404 means none only with Branch not protected in its body - and gh api repos/OWNER/REPO/rules/branches/main, a gate found by either being a gate. Where a gate: line says a query did not answer, or neither of those two answered, say the rights did not allow finding out rather than naming a case. Then hand the user the merge in one text, in their language: that the pull request, named by its title, is open; say which case it was, in the one sentence on why GitHub does not merge it itself; hand them the merge command, $WHERE" "$LINE" "$AFTER That text stands last in the message that ends the turn, what else the turn owes them before it and nothing beside it or after it - no second question, no proposal, nothing on what comes after the merge - and nothing in it as if something had gone wrong. Whether it landed is then read off gh pr view <number> --json state,mergedAt, MERGED with a time in it, never off the output alone and never off their word. ${NOTRUN}With nobody there, that text stands among what is theirs to do in the last message instead$ALONE; past its gate: with a rerun: line, the field reading true, is no stop at first, foreign: lines beside it or not: restart once each run its rerun: lines name, gh run rerun <id> without --failed and without --job, then run the program again, and GitHub merges, never you; past its gate: again after that, or with no rerun: line, is a stop with the reason named, and that text then carries no sentence on the case. This holds even if the user just said to merge: their yes authorises the merge, not you performing it."
} >&2
exit 2
