    PR_ID=$(gh pr view --json id -q .id)
    gh api graphql -f query='mutation($id:ID!){enablePullRequestAutoMerge(input:{pullRequestId:$id,mergeMethod:SQUASH}){clientMutationId}}' -f id="$PR_ID"
