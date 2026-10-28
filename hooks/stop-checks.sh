#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)
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
  OUT=$(cd "$PROJECT_DIR" && $RUNNER "$target" 2>&1); RC=$?
  if [ "$RC" -ne 0 ]; then
    # A tool of the chain not found on the search path the chain runs under,
    # read through bin/devloop-missing-tool since 21 October 2026: the check
    # did not run and found nothing, the tool is named, and what closes it
    # belongs in the repository - the should of the roadmap entry of 30
    # September 2026 on devloop-test-s.
    if MISSING=$(printf '%s\n' "$OUT" | "$HERE/../bin/devloop-missing-tool" "$RC"); then
      OUT="This check did not run and found nothing: $MISSING is not found on the search path the chain runs under. What closes that belongs in the repository and not in this session - the directory of $MISSING on the PATH the runner uses, or the target calling $MISSING by the path the installer wrote to - so that the next shell and the next person meet it; docs/agents/environment.md says where it stands. The output:
$OUT"
    fi
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
  - a command, as it runs from wherever they are, with where they type it: in Claude Code with ! in front where it asks nothing and ends by itself, else in a second terminal window, not the one Claude Code runs in, with what it asks named - and what to look for in the output
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
their cause in the output below and are fixed directly. A class whose output
opens on \"This check did not run\" is not red from the code: put what closes
it into the repository, as that line says, and run it again.$FAILED" >&2
exit 2
