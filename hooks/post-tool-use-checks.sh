#!/bin/bash
set -uo pipefail
INPUT=$(cat)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
CHECKS="$PROJECT_DIR/docs/agents/checks.md"
[ -f "$CHECKS" ] || exit 0

FILE=$(echo "$INPUT" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ -n "$FILE" ] || exit 0
[ -f "$FILE" ] || exit 0
REL="${FILE#$PROJECT_DIR/}"

RUNNER=$(grep -m1 '^runner:' "$CHECKS" | sed 's/^runner:[[:space:]]*//')
[ -n "$RUNNER" ] || exit 0

FAILED=""
while IFS='|' read -r _ klasse ziel _ muster _ _ stand _; do
  klasse=$(echo "$klasse" | xargs); ziel=$(echo "$ziel" | xargs)
  muster=$(echo "$muster" | xargs); stand=$(echo "$stand" | xargs)
  [ "$stand" = "gefuellt" ] || continue
  [ -n "$ziel" ] && [ "$ziel" != "-" ] || continue
  PASST=0
  IFS=',' read -ra PATS <<< "$muster"
  for p in "${PATS[@]}"; do
    p=$(echo "$p" | xargs); [ -n "$p" ] || continue
    case "$REL" in ${p##\*\*/}) PASST=1;; $p) PASST=1;; esac
  done
  [ "$PASST" = "1" ] || continue
  if ! OUT=$(cd "$PROJECT_DIR" && $RUNNER "$ziel" FILE="$REL" 2>&1); then
    FAILED="$FAILED
--- $klasse ($RUNNER $ziel FILE=$REL) ---
$OUT"
  fi
done < <(grep '^|' "$CHECKS" | grep -v '^|[[:space:]]*-' | tail -n +2)

[ -z "$FAILED" ] && exit 0
echo "Pruefung der gerade geaenderten Datei rot. Behebe das jetzt:$FAILED" >&2
exit 2
