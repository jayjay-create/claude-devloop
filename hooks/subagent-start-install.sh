#!/bin/bash
HERE=$(cd "$(dirname "$0")" && pwd)
# Gives every subagent, at its start, the install record as the session start
# prints it and a short rule on installing that outranks the prompt, as
# additionalContext of the event SubagentStart, since 28 October 2026,
# decision (2) of the roadmap entry of 27 October 2026 on the tool state read
# by one program: the build subagents of run 1 of 26 October 2026 got neither
# point 7 of build-work step 3 nor the record from the prompt, "Do not
# install anything" standing there instead, new defect 6 of the roadmap entry
# of 27 October 2026 on the three closing runs. The vendor's hooks reference,
# read on 28 October 2026: a hook on SubagentStart runs when a subagent is
# spawned or resumed, cannot block it, and may return additionalContext,
# "added to the subagent's context at the start of its conversation, before
# its first prompt"; its input carries agent_id and agent_type beside the
# common fields. The input is read through bin/devloop-command-reader, as
# every hook reads it, and nothing of it is used: the hook fires for every
# subagent, a reviewer or a drafting agent as the build subagent, with no
# matcher, since no hook can tell the build subagent apart, and the rule
# binds only one that would install. Where devloop is not set up in the
# project - the directory cannot be entered, is no git repository, or the
# setup state reads neither set up nor set up in part - the hook prints
# nothing, as hooks/session-start.sh holds it. The record line is formed by
# bin/devloop-install-record --line, the one source for both hooks. The rule
# is the hook's own words: a hook cannot insert text, "A hook cannot force
# wording" in docs/skill-conventions.md, and it says what build-work step 3
# point 7 says in substance - installed under a yes alone, by the subagent,
# backed, alone in its call, with 600000 milliseconds on the call; under a no
# or no record neither installed nor replaced by a stand-in, the subagent
# naming the tool, the backed command and that it is missing in its report
# and stopping with the task; a check class's tool never the subagent's to
# install. Since 30 October 2026, decided by the person that day, the rest of
# new defect 6 of that entry: the prompt hands point 7 no more. Point 7
# stands in shared/install-tool.md, inserted into build-work at its place,
# and this rule names the command that prints it with the four texts under
# it - backed-command, install-alone, fetch-and-run, install-not-through -
# through bin/devloop-text, with the plugin's path, which this hook knows and
# a prompt does not; the subagent reads them before it installs anything,
# and under no or none it installs nothing and needs none of them. A rule
# devloop itself has to keep is weaker than a mechanism, and point 7 whole in
# every prompt cost each subagent of a run about 4,000 words. Exit 0 on every
# path after the reader; 1 where the reader does not answer, which that
# event shows in the subagent's transcript and nowhere else. What the bench
# of 28 October 2026 measured stands in docs/skill-conventions.md at "A hook
# cannot force wording".
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0
# set up, or set up in part, as the session-start hook reads it: a file of the
# setup on the default branch as last fetched, or docs/agents/ in the tree
STATE=$("$HERE/../bin/devloop-setup-state" "$PROJECT_DIR" 2>&1)
RC=$?
[ -d docs/agents ] || { [ "$RC" -eq 0 ] && printf '%s\n' "$STATE" | grep -q '^present: '; } || exit 0

LINE=$("$HERE/../bin/devloop-install-record" --line "$PROJECT_DIR" 2>&1)
# the plugin's directory, resolved here: the subagent's prompt knows no path of the plugin
ROOT=$(cd "$HERE/.." && pwd)
RULE="devloop: this rule outranks the prompt on installing. A tool outside the repository that this task needs is installed only where that record says yes, by you, backed, alone in its call, with 600000 milliseconds on the call, as build-work step 3 point 7 says, which you read before you install anything, with the four texts under it, by running: for n in install-tool backed-command install-alone fetch-and-run install-not-through; do \"$ROOT/bin/devloop-text\" \"\$n\"; done; under no or none it is not installed and not replaced by a stand-in or a stub, and you need none of those texts: name the tool, the backed command and that it is missing in your report, and stop with the task. A check class's tool is not yours to install under either answer; name it in the report."
# the two lines as one JSON string: backslash and double quote escaped, the line break written as \n
ESC=$(printf '%s\n%s\n' "$LINE" "$RULE" | sed 's/\\/\\\\/g; s/"/\\"/g' | awk 'NR > 1 { printf "\\n" } { printf "%s", $0 }')
printf '{"hookSpecificOutput":{"hookEventName":"SubagentStart","additionalContext":"%s"}}\n' "$ESC"
exit 0
