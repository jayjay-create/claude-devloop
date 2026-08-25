#!/bin/bash
set -uo pipefail
INPUT=$(cat)
INPUT=$(printf '%s' "$INPUT" | tr '\n' ' ' | sed -e 's/\\\\/ /g' -e 's/\\"/ /g' -e 's/\\n/ /g' -e 's/\\t/ /g' -e 's/\\r/ /g')

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

# The list above catches the verb. These catch the outcome, because the same
# binary lands on the machine whether a package manager put it there or a build
# flag did. BINDIR is where things end up when they are meant to outlive the
# project.
BINDIR='(/usr/local/(bin|sbin)|/usr/(bin|sbin)|/opt/|(~|\$HOME)/(\.local/bin|bin|go/bin)|\$\(go env GOPATH\)/bin|\$GOBIN|\$GOPATH/bin)'
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])sudo[[:space:]]" && BEYOND=yes
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])(cp|mv|install|ln)[[:space:]][^|;]*$BINDIR" && BEYOND=yes
echo "$CMD" | grep -qE "\-o[[:space:]]*[^[:space:]]*$BINDIR" && BEYOND=yes
echo "$CMD" | grep -qE "(^|[^[:alnum:]_.-])make([[:space:]]+[^[:space:]]+)*[[:space:]]+install([[:space:]]|$)" && BEYOND=yes
echo "$CMD" | grep -qE "(curl|wget)[^|]*\|[[:space:]]*(sudo[[:space:]]+)?(ba)?sh([[:space:]]|$)" && BEYOND=yes
echo "$CMD" | grep -qE '(ba)?sh[[:space:]]+-c.*[$]\((curl|wget)' && BEYOND=yes
echo "$CMD" | grep -qE "<\([[:space:]]*(curl|wget)" && BEYOND=yes
[ "${BEYOND:-no}" = "yes" ] || exit 0

echo "Blocked: this installs outside the repository. Something that lands on the user's machine rather than in their project is theirs to run, the same way merging is — their yes authorises it, it does not authorise you performing it. Say in one line what it installs and what it unblocks, give them the exact command, and say this picks up as soon as it has run. Say both ways it can go at the same time: this picks up as soon as the command has run, and if they decline, that is an answer too. What a decline costs depends on what the tool was for - a check class becomes skipped with that reason, or the part of the task that needs it cannot be built - so say which, and carry on rather than stopping. If it only looked like an install — a project-local dependency, a virtual environment — say so and let them decide." >&2
exit 2
