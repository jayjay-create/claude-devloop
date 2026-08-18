#!/bin/bash
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0

if [ ! -d "docs/agents" ]; then
  echo "[ProjectStatus] devloop: not set up here | first-run text: ${CLAUDE_PLUGIN_ROOT}/reference/first-run.md"
  exit 0
fi

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || BRANCH="none"
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
echo "[ProjectStatus] branch: $BRANCH | uncommitted changes: $DIRTY | devloop: set up"
exit 0
