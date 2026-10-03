#!/bin/bash
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0

# How far the setup has got, read through the same program the skills read it
# with, bin/devloop-setup-state: off the default branch as last fetched and
# never off the working tree, and here without --fetch, so that no network is
# reached at the start of a session. The branch alone cannot tell a project
# never set up from a setup written and not landed, so the directory in the
# working tree is read beside it. Every file of the setup on the branch: set
# up. Some file there, or none there and docs/agents/ in the working tree:
# set up in part, the present and the missing files by name. Nothing there and
# no directory: not set up here. Where the program cannot read the branch, its
# cause stands in place of the files, and the directory alone decides between
# the last two.
HERE=$(cd "$(dirname "$0")" && pwd)
STATE=$("$HERE/../bin/devloop-setup-state" "$PROJECT_DIR" 2>&1)
RC=$?
SETUP=""
if [ "$RC" -eq 0 ]; then
  REF=$(printf '%s\n' "$STATE" | sed -n 's/^ref: //p' | head -1)
  PRESENT=$(printf '%s\n' "$STATE" | sed -n 's/^present: //p' | tr '\n' ' ' | sed 's/ $//')
  MISSING=$(printf '%s\n' "$STATE" | sed -n 's/^missing: //p' | tr '\n' ' ' | sed 's/ $//')
  if [ -z "$MISSING" ]; then
    SETUP="set up"
  elif [ -n "$PRESENT" ] || [ -d "docs/agents" ]; then
    SETUP="set up in part | on $REF as last fetched: ${PRESENT:-none} | missing: $MISSING"
  fi
elif [ -d "docs/agents" ]; then
  CAUSE=$(printf '%s\n' "$STATE" | sed -n 's/^cause: //p' | head -1)
  SETUP="set up in part | on the default branch as last fetched: not read, ${CAUSE:-the reader answered nothing} | missing: not read"
fi
if [ -z "$SETUP" ]; then
  echo "[ProjectStatus] devloop: not set up here"
  exit 0
fi

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || BRANCH="none"
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
echo "[ProjectStatus] branch: $BRANCH | uncommitted changes: $DIRTY | devloop: $SETUP"

# The install record, read through the same program the install guard reads it
# with, off the default branch as last fetched: what a second person who cloned
# this repository meets before the first install, rather than after it.
RECORD=$("$HERE/../bin/devloop-install-record" "$PROJECT_DIR" 2>&1)
if [ $? -eq 0 ]; then
  PLACES=$(printf '%s\n' "$RECORD" | sed -n 's/^place: //p' | tr '\n' ' ' | sed 's/ $//')
  ROUTES=$(printf '%s\n' "$RECORD" | sed -n 's/^route: //p' | tr '\n' ' ' | sed 's/ $//')
  echo "[InstallRecord] tools: $(printf '%s\n' "$RECORD" | sed -n 's/^tools: //p') | places: ${PLACES:-none} | routes: ${ROUTES:-none} | answered: $(printf '%s\n' "$RECORD" | sed -n 's/^answered: //p') | read off $(printf '%s\n' "$RECORD" | sed -n 's/^ref: //p') as last fetched, not off the working tree"
else
  echo "[InstallRecord] none: $(printf '%s\n' "$RECORD" | sed -n 's/^cause: //p' | head -1) | every install outside the repository is blocked and handed to you until a record has landed on the default branch"
fi
exit 0
