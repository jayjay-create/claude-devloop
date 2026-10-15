#!/bin/bash
set -uo pipefail
HERE=$(cd "$(dirname "$0")" && pwd)

# Says, once per session and only in a session where a skill of devloop was
# loaded, that the output style of devloop does not apply, and why: the style
# under output-styles/ is forced for the plugin, Claude Code uses the first
# forced style loaded, and nothing of the hooks' input names the style in
# effect. What was sent stands in the transcript, whose path the input
# carries: the attachment of type output_style_instructions, written with
# the first prompt of a session and again when a session is resumed, carries
# the name of the style that went into the requests as <plugin>:<style>, the
# person's own style under its bare name, and no such attachment stands where
# no style applies; measured 15 October 2026 under Claude Code 2.1.299 and
# 2.1.300, docs/roadmap.md, the entry of that date on the output style. The
# last attachment is the session's. The input is read through
# bin/devloop-command-reader, which decodes the JSON, since 12 October 2026;
# every hook reads it so, and a check in .github/workflows/stock-take.yml
# holds them to that. PostToolUse runs once a tool has run, so this blocks
# nothing: it hands the run the facts as context, and the run says them to
# the person in their language, as a text of its message, the wording the
# run's, the content the roadmap entry's. Registered under PostToolUse and
# under PostToolUseFailure, both without a matcher, since PostToolUse fires
# only after a tool call that succeeded and the first call of a session can
# fail, as the first walk of 15 October 2026 met: the event is read off the
# input and answered under its own name. In a subagent nothing is read:
# subagents run their own system prompt and no output style.
INPUT=$("$HERE/../bin/devloop-command-reader") || exit 1
EVENT=$(printf '%s\n' "$INPUT" | sed -n 's/^event: //p' | head -1)
case "$EVENT" in PostToolUse|PostToolUseFailure) ;; *) exit 0 ;; esac
printf '%s\n' "$INPUT" | grep -q '^agent_id: ' && exit 0
TRANSCRIPT=$(printf '%s\n' "$INPUT" | sed -n 's/^transcript: //p' | head -1)
[ -n "$TRANSCRIPT" ] && [ -f "$TRANSCRIPT" ] || exit 0
SID=$(printf '%s\n' "$INPUT" | sed -n 's/^session_id: //p' | head -1 | tr -cd 'A-Za-z0-9._-')
[ -n "$SID" ] || exit 0

# Only once a skill of devloop stands in the transcript: typed as a command,
# or called through the Skill tool. Before that, nothing is read and nothing
# is said, and the next tool call reads again.
grep -q -e '<command-name>/devloop:' -e '"skill":"devloop:' "$TRANSCRIPT" || exit 0
NAME=$(grep '"output_style_instructions"' "$TRANSCRIPT" | tail -1 | sed -n 's/.*"output_style_instructions".*"style":{"name":"\([^"]*\)".*/\1/p' | tr -cd 'A-Za-z0-9._:-')

# Said once per session and style: the mark carries both, so that a session
# resumed under another style is told again, and one resumed under the same
# is not.
MARK="${TMPDIR:-/tmp}/devloop-output-style-said-$SID-${NAME:-none}"
[ -e "$MARK" ] && exit 0
: > "$MARK"
case "$NAME" in
  devloop:devloop)
    exit 0 ;;
  "")
    CAUSE="no output style stands in this session's transcript, so this Claude Code did not apply the style devloop forces; measured to apply under Claude Code 2.1.299"
    LIFT="under a Claude Code that forces a plugin's output style, 2.1.299 or later, it applies from the next session on" ;;
  *:*)
    OTHER="${NAME%%:*}"
    CAUSE="the plugin $OTHER forces its own output style, and Claude Code uses the first forced style it loads"
    LIFT="if they disable the plugin $OTHER, it applies from the next session on" ;;
  *)
    CAUSE="the output style $NAME, chosen in the settings, is in effect, and this Claude Code did not put the style devloop forces over it; measured to do so under Claude Code 2.1.299"
    LIFT="under a Claude Code that forces a plugin's output style, 2.1.299 or later, it applies from the next session on" ;;
esac
CTX="[OutputStyle] Say this to the person now, in their language, as a text block of your message and before anything else of this step, in this session only this once: devloop's output style does not apply in this session, because $CAUSE; what a step is to tell them beforehand can then land in the collapsed part instead of the message; $LIFT."
printf '{"hookSpecificOutput":{"hookEventName":"%s","additionalContext":"%s"}}\n' "$EVENT" "$(printf '%s' "$CTX" | sed 's/\\/\\\\/g; s/"/\\"/g')"
exit 0
