#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0
[ -d "docs/agents" ] || exit 0

BRANCH=$(git branch --show-current 2>/dev/null)
[ -n "$BRANCH" ] || exit 0

DEFAULT=$(git symbolic-ref --short refs/remotes/origin/HEAD 2>/dev/null)
DEFAULT="${DEFAULT#origin/}"
if [ -z "$DEFAULT" ]; then
  for c in main master; do
    if git show-ref --verify --quiet "refs/heads/$c"; then DEFAULT="$c"; break; fi
  done
fi
[ -n "$DEFAULT" ] || exit 0
[ "$BRANCH" = "$DEFAULT" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)

case "$TOOL" in
  Edit|Write|MultiEdit)
    FILE=$(echo "$INPUT" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
    case "$FILE" in
      /*) case "$FILE" in "$PROJECT_DIR"/*) ;; *) exit 0;; esac;;
    esac
    WHAT="writing files"
    ;;
  Bash)
    CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
    echo "$CMD" | grep -qE '(^|[^[:alnum:]_-])git[[:space:]]+(commit|push)([[:space:]]|$)' || exit 0
    WHAT="committing or pushing"
    ;;
  *)
    exit 0
    ;;
esac

echo "Blocked: $WHAT on the $DEFAULT branch. This workflow requires a branch cut from $DEFAULT, and the change you are about to make would land on $DEFAULT itself. Cut a branch, then do this again. If the user asked for this on $DEFAULT deliberately, say that this is blocked and why, and let them decide — do not work around it." >&2
exit 2
