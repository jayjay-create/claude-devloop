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

cat >&2 <<'MSG'
Blocked: merging is not yours to perform, in any form. Arm the platform instead, with a command that cannot merge:
gh api graphql -f query='mutation($id:ID!){enablePullRequestAutoMerge(input:{pullRequestId:$id,mergeMethod:SQUASH}){clientMutationId}}' -F id=$(gh pr view --json id -q .id)
gh pr merge --auto is not a substitute: the tool drops that flag whenever the pull request is already mergeable and merges on the spot, which is the one thing this stage must not do. If arming is refused, read gh api repos/OWNER/REPO -q .allow_auto_merge to tell the two cases apart - auto-merge switched off on the repository, or no gate for it to wait on at all - then hand the user the merge command, say which case it was, and say the stage picks up the moment it lands. This holds even if the user just said to merge: their yes authorises the merge, not you performing it.
MSG
exit 2
