#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
CHECKS="$PROJECT_DIR/docs/agents/checks.md"
[ -f "$CHECKS" ] || exit 0

# The input is read through bin/devloop-command-reader, which decodes the
# JSON, since 12 October 2026; every hook reads it so, and a check in
# .github/workflows/stock-take.yml holds them to that. This hook reads the
# file the editing tool wrote and nothing else of its input.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
FILE=$(printf '%s\n' "$INPUT" | sed -n 's/^file: //p' | head -1)
[ -n "$FILE" ] || exit 0
[ -f "$FILE" ] || exit 0
REL="${FILE#$PROJECT_DIR/}"

RUNNER=$(grep -m1 '^runner:' "$CHECKS" | sed 's/^runner:[[:space:]]*//')
[ -n "$RUNNER" ] || exit 0

FAILED=""
while IFS='|' read -r _ class target _ globs _ _ status _; do
  class=$(echo "$class" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g"); target=$(echo "$target" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  globs=$(echo "$globs" | tr -d '`' | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g"); status=$(echo "$status" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  [ "$status" = "filled" ] || continue
  [ -n "$target" ] && [ "$target" != "-" ] || continue
  MATCH=0
  IFS=',' read -ra PATS <<< "$globs"
  for p in "${PATS[@]}"; do
    p=$(echo "$p" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g"); [ -n "$p" ] || continue
    case "$REL" in ${p##\*\*/}) MATCH=1;; $p) MATCH=1;; esac
  done
  [ "$MATCH" = "1" ] || continue
  if ! OUT=$(cd "$PROJECT_DIR" && $RUNNER "$target" FILE="$REL" 2>&1); then
    FAILED="$FAILED
--- $class ($RUNNER $target FILE=$REL) ---
$OUT"
  fi
done < <(grep '^|' "$CHECKS" | grep -v '^|[[:space:]]*-' | tail -n +2)

[ -z "$FAILED" ] && exit 0
echo "The file you just changed fails its checks. Fix this now:$FAILED" >&2
exit 2
