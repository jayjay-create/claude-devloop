#!/bin/bash
BRANCH=$(git branch --show-current 2>/dev/null || echo "keiner")
echo "[Projektstatus] Branch: $BRANCH | Plugin dev: geladen"
exit 0
