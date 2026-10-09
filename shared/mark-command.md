    mkdir -p .claude && { git rev-parse origin/main; echo build; echo "$DEVLOOP_SESSION_ID"; } > .claude/unattended.local
