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
    MSG="Blocked: writing files on the $DEFAULT branch. This workflow requires a branch cut from $DEFAULT, and the change you are about to make would land on $DEFAULT itself. Cut a branch, then do this again. If the user asked for this on $DEFAULT deliberately, say that this is blocked and why, and let them decide — do not work around it."
    ;;
  Bash)
    CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
    echo "$CMD" | grep -qE '(^|[^[:alnum:]_-])git[[:space:]]+(commit|push)([[:space:]]|$)' || exit 0

    if echo "$CMD" | grep -qE '(^|[^[:alnum:]_-])git[[:space:]]+commit([[:space:]]|$)'; then
      MSG="Blocked: committing on the $DEFAULT branch. This workflow requires a branch cut from $DEFAULT, and the commit you are about to make would land on $DEFAULT itself. Cut a branch, then do this again. If the user asked for this on $DEFAULT deliberately, say that this is blocked and why, and let them decide — do not work around it."
    else
      # What is guarded is the default branch moving, not where you stand. A push
      # is read for its destination: the refspecs after the remote, taken as the
      # part behind the last colon with a leading + and refs/heads/ stripped. A
      # destination that is demonstrably another branch goes through, deletions
      # included. No readable destination means the current branch — which here
      # is the default one — so it blocks. Every git push in the command is read,
      # so one blocking segment blocks the whole call.
      SEGS=$(printf '%s' "$CMD" | tr '&|;()' '\n\n\n\n\n')
      BLOCKED=no
      set -f
      while IFS= read -r SEG; do
        case "$SEG" in *git*push*) ;; *) continue;; esac
        echo "$SEG" | grep -qE '(^|[^[:alnum:]_-])git[[:space:]]+push([[:space:]]|$)' || continue
        ARGS=$(printf '%s' "$SEG" | sed -e 's/.*git[[:space:]][[:space:]]*push//')
        REMOTE_SEEN=no
        NREFS=0
        for TOK in $ARGS; do
          case "$TOK" in
            --all|--mirror) BLOCKED=yes; continue;;
            -*) continue;;
          esac
          if [ "$REMOTE_SEEN" = no ]; then REMOTE_SEEN=yes; continue; fi
          NREFS=$((NREFS + 1))
          DST="${TOK##*:}"
          DST="${DST#+}"
          DST="${DST#refs/heads/}"
          case "$DST" in
            "$DEFAULT"|HEAD|@) BLOCKED=yes;;
          esac
        done
        [ "$NREFS" -eq 0 ] && BLOCKED=yes
      done <<< "$SEGS"
      set +f
      [ "$BLOCKED" = yes ] || exit 0
      MSG="Blocked: pushing to $DEFAULT. This workflow requires a branch cut from $DEFAULT. This push either names $DEFAULT as its destination or names no destination at all, which sends the current branch — $DEFAULT itself. A push whose destination is demonstrably another branch is not blocked, deletions included. If the user asked for this on $DEFAULT deliberately, or if this command does not move $DEFAULT, say that this is blocked and why, and let them decide — do not run the same act under another command name and do not reword it until this stops matching."
    fi
    ;;
  *)
    exit 0
    ;;
esac

echo "$MSG" >&2
exit 2
