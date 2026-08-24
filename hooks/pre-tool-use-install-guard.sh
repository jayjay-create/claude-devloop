#!/bin/bash
set -uo pipefail
INPUT=$(cat)

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$PWD}"
cd "$PROJECT_DIR" 2>/dev/null || exit 0
[ -d "docs/agents" ] || exit 0

TOOL=$(echo "$INPUT" | sed -n 's/.*"tool_name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
[ "$TOOL" = "Bash" ] || exit 0

CMD=$(echo "$INPUT" | sed -n 's/.*"command"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)

MANAGER='brew|port|apt|apt-get|yum|dnf|zypper|pacman|apk|snap|choco|winget|scoop|sdk|gem|cargo|go|pipx|uv[[:space:]]+tool|asdf|mise|rustup|nvm'
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])($MANAGER)[[:space:]]+(install|add|use|tap)([[:space:]]|$)" && BEYOND=yes
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+(install|i|add)([[:space:]].*)?[[:space:]](-g|--global)([[:space:]]|$)' && BEYOND=yes
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])(npm|pnpm|yarn|bun)[[:space:]]+global[[:space:]]+(add|install)([[:space:]]|$)' && BEYOND=yes
echo "$CMD" | grep -qE '(^|[^[:alnum:]_.-])pip3?[[:space:]]+install([[:space:]]|$)' && BEYOND=yes
[ "${BEYOND:-no}" = "yes" ] || exit 0

echo "Blocked: this installs outside the repository. Something that lands on the user's machine rather than in their project is theirs to run, the same way merging is — their yes authorises it, it does not authorise you performing it. Say in one line what it installs and what it unblocks, give them the exact command, and say this picks up as soon as it has run. If they decline, that is an answer: record the check class it was for as skipped with that reason and carry on, rather than stopping. If it only looked like an install — a project-local dependency, a virtual environment — say so and let them decide." >&2
exit 2
