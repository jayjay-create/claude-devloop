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
while IFS='|' read -r _ klasse _ ziel _ _ blockierend stand _; do
  klasse=$(echo "$klasse" | xargs)
  ziel=$(echo "$ziel" | xargs)
  blockierend=$(echo "$blockierend" | xargs)
  stand=$(echo "$stand" | xargs)
  [ "$blockierend" = "ja" ] || continue
  [ "$stand" = "gefuellt" ] || continue
  [ -n "$ziel" ] && [ "$ziel" != "-" ] || continue
  if ! OUT=$(cd "$PROJECT_DIR" && $RUNNER "$ziel" 2>&1); then
    FAILED="$FAILED
--- $klasse ($RUNNER $ziel) ---
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
  echo "Nach $MAX Versuchen weiterhin rot. Melde dem Menschen, was offen bleibt:$FAILED" >&2
  exit 0
fi

echo "Pruefungen rot (Versuch $COUNT von $MAX). Behebe das, bevor du fertig meldest:$FAILED" >&2
exit 2
