#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# Writes what an install did into docs/agents/environment.md, since 21
# October 2026, cluster 18 of milestone 3 as the person decided it on 20 and
# 21 October 2026: after every Bash call that
# hooks/pre-tool-use-install-guard.sh let through under a record saying yes
# as an install outside the project, and that succeeded, one line per install
# under the heading below - the command as it ran and the folder it installed
# into, no date - and a line that stands there already is not written a
# second time. The guard reads the command and where it lands at PreToolUse
# and leaves the facts through bin/devloop-install-note, keyed by the session
# and the tool call; this hook reads no command and resolves no place itself,
# so that there is one reading, the guard's, and the form of the line lives
# in that program. Registered under PostToolUse and under PostToolUseFailure,
# both with the matcher Bash: PostToolUse fires only after a call that
# succeeded - measured on 21 October 2026 under Claude Code 2.1.305, a
# command that exits other than 0 reaches PostToolUseFailure with "Exit code
# N" - so the fact is written there, and on PostToolUseFailure the note is
# dropped; a call whose tool_response says interrupted writes nothing either.
# The input is read through bin/devloop-command-reader, which decodes the
# JSON, since 12 October 2026; every hook reads it so, and a check in
# .github/workflows/stock-take.yml holds them to that. Where the line cannot
# be written - the tree on the default branch, which the branch guard holds
# unchanged for the editing tool by design, or docs/agents/environment.md
# missing in the working tree - the hook says so with exit 2, which on
# PostToolUse shows stderr to the run while the tool has already run, and
# carries the lines, so that the run can put them where they belong; it
# blocks nothing. Where it wrote, it hands the run the lines as context.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
EVENT=$(printf '%s\n' "$INPUT" | sed -n 's/^event: //p' | head -1)
TOOL=$(printf '%s\n' "$INPUT" | sed -n 's/^tool: //p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0
SID=$(printf '%s\n' "$INPUT" | sed -n 's/^session_id: //p' | head -1)
TUID=$(printf '%s\n' "$INPUT" | sed -n 's/^tool_use_id: //p' | head -1)
[ -n "$SID" ] && [ -n "$TUID" ] || exit 0
case "$EVENT" in
  PostToolUse) ;;
  *) "$HERE/../bin/devloop-install-note" drop "$SID" "$TUID"; exit 0 ;;
esac
INTERRUPTED=$(printf '%s\n' "$INPUT" | sed -n 's/^interrupted: //p' | head -1)
if [ "$INTERRUPTED" = "true" ]; then "$HERE/../bin/devloop-install-note" drop "$SID" "$TUID"; exit 0; fi
LINES=$("$HERE/../bin/devloop-install-note" take "$SID" "$TUID") || exit 0
[ -n "$LINES" ] || exit 0

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0
FILE="docs/agents/environment.md"
HEADING='## Installed outside the project'
ONE_LINE=$(printf '%s\n' "$LINES" | tr '\n' ' ' | sed 's/ $//')

# The default branch, read off bin/devloop-setup-state's ref line, which
# resolves it as the branch guard does; where the program cannot read it the
# guard blocked before this and no note stands. On that branch nothing is
# written, since nothing of a run may change there.
DEFAULT=$("$HERE/../bin/devloop-setup-state" "$PROJECT_DIR" 2>/dev/null | sed -n 's/^ref: origin\///p' | head -1)
BRANCH=$(git branch --show-current 2>/dev/null)
if [ -n "$DEFAULT" ] && [ "$BRANCH" = "$DEFAULT" ]; then
  echo "Not written: the install went through, and its line for $FILE is not written while the tree stands on the default branch $BRANCH, where nothing of a run may change. Cut the branch of this work and put it there, under \"$HEADING\", as it stands here: $ONE_LINE" >&2
  exit 2
fi
if [ ! -f "$FILE" ]; then
  echo "Not written: the install went through, and $FILE is missing in the working tree, so its line has no file to stand in. Put it there once the file stands, under \"$HEADING\", as it stands here: $ONE_LINE" >&2
  exit 2
fi

# The heading where it does not stand yet: at the end of the file, a blank
# line before it, the file's last line given its newline where it has none.
if ! grep -qxF "$HEADING" "$FILE"; then
  if [ -s "$FILE" ]; then
    [ "$(tail -c 1 "$FILE" | wc -l | tr -d ' ')" -eq 1 ] || printf '\n' >> "$FILE"
    [ -z "$(tail -n 1 "$FILE")" ] || printf '\n' >> "$FILE"
  fi
  printf '%s\n' "$HEADING" >> "$FILE"
fi
# Each line at the end of the section, after its last line that is not
# blank, and before the next heading where one follows; a line that stands
# in the file already, whole, is not written again.
WRITTEN=""
while IFS= read -r L; do
  [ -n "$L" ] || continue
  grep -qxF -- "$L" "$FILE" && continue
  awk -v h="$HEADING" -v l="$L" '
    { lines[NR] = $0 }
    END {
      s = 0
      for (i = 1; i <= NR; i++) if (lines[i] == h) { s = i; break }
      e = NR
      for (i = s + 1; i <= NR; i++) if (lines[i] ~ /^## /) { e = i - 1; break }
      while (e > s && lines[e] == "") e--
      for (i = 1; i <= e; i++) print lines[i]
      if (e == s) print ""
      print l
      for (i = e + 1; i <= NR; i++) print lines[i]
    }' "$FILE" > "$FILE.devloop-tmp" && mv "$FILE.devloop-tmp" "$FILE"
  WRITTEN="$WRITTEN${WRITTEN:+ }$L"
done <<< "$LINES"
[ -n "$WRITTEN" ] || exit 0
CTX="[InstallFact] written into $FILE under \"$HEADING\", on this branch, by the hook and not by you: $WRITTEN"
printf '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"%s"}}\n' "$(printf '%s' "$CTX" | sed 's/\\/\\\\/g; s/"/\\"/g')"
exit 0
