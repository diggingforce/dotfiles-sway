#!/usr/bin/env bash
set -euo pipefail

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
FILE_NAME="screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
ICON="$HOME/.config/sway/scripts/screenshot.png"

if command -v wayfreeze &>/dev/null; then
    wayfreeze &
    FREEZE_PID=$!
    trap 'kill "$FREEZE_PID" 2>/dev/null || true' EXIT
    sleep 0.1
    GEOM=$(slurp 2>/dev/null) || exit 0
    if [ -n "$GEOM" ]; then
        grim -c -g "$GEOM" "$FILE"
    fi
    kill "$FREEZE_PID" 2>/dev/null || true
    trap - EXIT
else
    GEOM=$(slurp 2>/dev/null) || exit 0
    if [ -n "$GEOM" ]; then
        grim -c -g "$GEOM" "$FILE"
    fi
fi

if [ -n "$GEOM" ] && [ -f "$FILE" ]; then
    wl-copy < "$FILE"
    if command -v notify-send &>/dev/null; then
        notify-send "Screenshot Captured" "Saved as $FILE_NAME" ${ICON:+-i "$ICON"} 2>/dev/null || true
    fi
fi
