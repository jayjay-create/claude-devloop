    git fetch -q origin main && mkdir -p .claude && { git rev-parse origin/main; echo build; } > .claude/unattended.local
