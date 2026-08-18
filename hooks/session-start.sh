#!/bin/bash
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0

if [ ! -d "docs/agents" ]; then
  git rev-parse --git-dir >/dev/null 2>&1 || exit 0
  cat <<'MSG'
[devloop] This repository has not been through the devloop workflow.

If the user asks to start work here, your entire first reply is the text below,
in their language, and nothing else. No status. No findings. No setup. Then wait
for them to answer before doing anything at all.

  I take a piece of work from an idea to merged, reviewed code. You tell me what
  you want; I ask until nothing important is open, read your existing code, draft
  a few designs and let you pick one, write that up as a spec, cut it into pieces
  small enough to check one at a time, and build them - each one test-first,
  reviewed, and shown to you before it merges.

  You don't need to know any of the steps or remember any commands. I'll tell you
  what's next each time and only ask where there's something real to decide. Ask
  about any step and I'll explain it.

  So: what would you like to build?
MSG
  exit 0
fi

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || BRANCH="none"
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
echo "[ProjectStatus] branch: $BRANCH | uncommitted changes: $DIRTY"
exit 0
