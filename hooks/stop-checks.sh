#!/bin/bash
set -uo pipefail
cat >/dev/null

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
CHECKS="$PROJECT_DIR/docs/agents/checks.md"
STATE="$PROJECT_DIR/.claude/check-attempts.local"
MAX=3

[ -f "$CHECKS" ] || exit 0
RUNNER=$(grep -m1 '^runner:' "$CHECKS" | sed 's/^runner:[[:space:]]*//')
[ -n "$RUNNER" ] || exit 0

FAILED=""
while IFS='|' read -r _ class _ target _ _ blocking status _; do
  class=$(echo "$class" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  target=$(echo "$target" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  blocking=$(echo "$blocking" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  status=$(echo "$status" | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]]*$//" -e "s/\`//g")
  [ "$blocking" = "yes" ] || continue
  [ "$status" = "filled" ] || continue
  [ -n "$target" ] && [ "$target" != "-" ] || continue
  if ! OUT=$(cd "$PROJECT_DIR" && $RUNNER "$target" 2>&1); then
    FAILED="$FAILED
--- $class ($RUNNER $target) ---
$OUT"
  fi
done < <(grep '^|' "$CHECKS" | grep -v '^|[[:space:]]*-' | tail -n +2)

if [ -z "$FAILED" ]; then
  rm -f "$STATE"
  exit 0
fi

SIG=$(echo "$FAILED" | grep '^--- ' | cksum | cut -d' ' -f1)
PREV=""; COUNT=0
[ -f "$STATE" ] && { PREV=$(cut -d' ' -f1 "$STATE"); COUNT=$(cut -d' ' -f2 "$STATE"); }
if [ "$SIG" = "$PREV" ]; then COUNT=$((COUNT+1)); else COUNT=1; fi
mkdir -p "$(dirname "$STATE")"
echo "$SIG $COUNT" > "$STATE"

if [ "$COUNT" -ge "$MAX" ]; then
  rm -f "$STATE"
  echo "Still failing after $MAX attempts. Report to the human what remains broken:$FAILED" >&2
  exit 0
fi

echo "Checks are failing (attempt $COUNT of $MAX). Fix this before reporting done:$FAILED" >&2
exit 2
