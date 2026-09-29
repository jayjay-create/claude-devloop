#!/bin/bash
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0

if [ ! -d "docs/agents" ]; then
  echo "[ProjectStatus] devloop: not set up here"
  exit 0
fi

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || BRANCH="none"
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
echo "[ProjectStatus] branch: $BRANCH | uncommitted changes: $DIRTY | devloop: set up"

# The install record, read through the same program the install guard reads it
# with, off the default branch as last fetched: what a second person who cloned
# this repository meets before the first install, rather than after it.
HERE=$(cd "$(dirname "$0")" && pwd)
RECORD=$("$HERE/../bin/devloop-install-record" "$PROJECT_DIR" 2>&1)
if [ $? -eq 0 ]; then
  PLACES=$(printf '%s\n' "$RECORD" | sed -n 's/^place: //p' | tr '\n' ' ' | sed 's/ $//')
  ROUTES=$(printf '%s\n' "$RECORD" | sed -n 's/^route: //p' | tr '\n' ' ' | sed 's/ $//')
  echo "[InstallRecord] tools: $(printf '%s\n' "$RECORD" | sed -n 's/^tools: //p') | places: ${PLACES:-none} | routes: ${ROUTES:-none} | answered: $(printf '%s\n' "$RECORD" | sed -n 's/^answered: //p') | read off $(printf '%s\n' "$RECORD" | sed -n 's/^ref: //p') as last fetched, not off the working tree"
else
  echo "[InstallRecord] none: $(printf '%s\n' "$RECORD" | sed -n 's/^cause: //p' | head -1) | every install outside the repository is blocked and handed to you until a record has landed on the default branch"
fi
exit 0
