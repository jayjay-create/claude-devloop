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
  OUT=$(cd "$PROJECT_DIR" && $RUNNER "$target" FILE="$REL" 2>&1); RC=$?
  if [ "$RC" -ne 0 ]; then
    # A tool of the chain not found on the search path the chain runs under,
    # read through bin/devloop-missing-tool since 21 October 2026, as
    # hooks/stop-checks.sh reads it: the check did not run and found
    # nothing, the tool is named, and what closes it belongs in the
    # repository.
    if MISSING=$(printf '%s\n' "$OUT" | "$HERE/../bin/devloop-missing-tool" "$RC"); then
      OUT="This check did not run and found nothing: $MISSING is not found on the search path the chain runs under. What closes that belongs in the repository and not in this session - the directory of $MISSING on the PATH the runner uses, or the target calling $MISSING by the path the installer wrote to - so that the next shell and the next person meet it; docs/agents/environment.md says where it stands. The output:
$OUT"
    fi
    FAILED="$FAILED
--- $class ($RUNNER $target FILE=$REL) ---
$OUT"
  fi
done < <(grep '^|' "$CHECKS" | grep -v '^|[[:space:]]*-' | tail -n +2)

[ -z "$FAILED" ] && exit 0
echo "The file you just changed fails its checks. Fix this now; a class whose output opens on \"This check did not run\" is not red from the code, and what closes it goes into the repository as that line says:$FAILED" >&2
exit 2
