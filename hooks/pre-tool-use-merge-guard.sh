#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

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
gh pr merge --auto is not a substitute: the tool drops that flag whenever the pull request is already mergeable and merges on the spot, which is the one thing this stage must not do. If arming is refused there are three cases, and gh api repos/OWNER/REPO -q .allow_auto_merge answers only the first: auto-merge switched off on the repository, the field false; or no gate for it to wait on at all; or a gate this pull request is already past, the required check green and nothing outstanding, so GitHub will not arm what it would merge on the spot. Read gh pr view --json mergeStateStatus -q .mergeStateStatus immediately before arming - BLOCKED is the state that accepts it - and read whether a gate exists from both gh api repos/OWNER/REPO/branches/main/protection (classic protection; needs admin, and a 404 means none only where the body says "Branch not protected") and gh api repos/OWNER/REPO/rules/branches/main (rulesets; no special rights, blind to classic protection). A gate found by either is a gate; where neither answered, say the rights did not allow finding out rather than naming a case. Then hand the user the merge command, say which case it was, and say the stage picks up as soon as they say it has landed - nothing moves here until they say so. This holds even if the user just said to merge: their yes authorises the merge, not you performing it.
MSG
exit 2
