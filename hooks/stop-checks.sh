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

if [ "$COUNT" -gt "$MAX" ]; then
  exit 0
fi

if [ "$COUNT" -eq "$MAX" ]; then
  echo "Still failing after $MAX attempts. Stop trying. Do not run another variation of what already failed.

Hand this to the human in a form they can act on in one step. Pick whichever fits:
  - a command they can paste into their own terminal, and what to look for in the output
  - a small script that gathers the versions, paths and environment this needs, ready to run
  - a smaller case that reproduces the failure away from the rest of the project
  - a named question only they can answer, with what each answer would change

Say what you were trying to do, what you tried, and what the failure actually
says. Name the candidate causes a diagnosis already ruled out, so nobody spends
the time again. Then wait for them. Failing checks:$FAILED" >&2
  exit 2
fi

echo "Checks are failing (attempt $COUNT of $MAX). Fix this before reporting done.
A failure in the unit, integration or end-to-end class does not name its cause.
Run diagnose-bug on it rather than another guess. The other six classes print
their cause in the output below and are fixed directly.$FAILED" >&2
exit 2
