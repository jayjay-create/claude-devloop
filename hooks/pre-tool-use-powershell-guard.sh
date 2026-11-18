#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# The guard on the PowerShell tool, since 18 November 2026, decided by the
# person that day, order (3) of milestone 12 in docs/plan.md: where devloop
# is set up, docs/agents/ standing as for every other guard, every call of
# the PowerShell tool is turned down on every system, and the message has
# the model run the same command unchanged with the Bash tool, where the six
# guards on commands read it as they read every Bash call. On Windows with
# Git Bash the PowerShell tool is on by default for claude.ai and Console
# accounts and Claude treats PowerShell as the primary shell, and a hook on
# the matcher Bash never fires for that tool, the vendor's tools reference
# under "PowerShell tool" and the hooks reference under the PowerShell input
# of PreToolUse, read raw that day. Not chosen: the six guards taught to read
# PowerShell, each guard then standing twice; and the tool switched off in
# the project's settings. The refusal is no block: shared/command-does-not-
# answer.md says it is answered by the same command through the Bash tool,
# and neither said nor filed. Registered under PreToolUse with the matcher
# PowerShell alone, so every input it is given is a call of that tool.
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
[ -d "$PROJECT_DIR/docs/agents" ] || exit 0

# The input is read through bin/devloop-command-reader, as every hook reads
# it, and nothing of it is used: the reader decodes the JSON, and a JSON it
# cannot read ends the hook with 1, which blocks the call under onFailure
# block, as it does in every guard.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1

printf '%s\n' "Turned down by devloop: in this project every shell command goes through the Bash tool, where devloop's guards read it, and none through the PowerShell tool. Run the same command, unchanged, with the Bash tool. This is no block: running it there is the whole answer, and nothing about this refusal is said, reported or filed." >&2
exit 2
