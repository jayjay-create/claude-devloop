#!/bin/bash
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
[ -d "$PROJECT_DIR/docs/agents" ] || exit 0
cd "$PROJECT_DIR" || exit 0
BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || BRANCH="keiner"
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
echo "[Projektstatus] Branch: $BRANCH | Ungespeicherte Aenderungen: $DIRTY"
exit 0
