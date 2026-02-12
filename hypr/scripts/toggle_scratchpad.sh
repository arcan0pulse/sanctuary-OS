#!/usr/bin/env bash
CLASS="$1"
CMD="$2"
WORKSPACE="$3"

if [ -z "$WORKSPACE" ]; then
    echo "Error: workspace argument missing"
    exit 1
fi

ACTIVE_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .id')
IS_OPEN=$(hyprctl clients -j | jq -r ".[] | select(.class == \"$CLASS\") | .address")

if [ -n "$IS_OPEN" ]; then
    CURRENT_WS=$(hyprctl clients -j | jq -r ".[] | select(.class == \"$CLASS\") | .workspace.name")
    if [ "$CURRENT_WS" != "special:$WORKSPACE" ]; then
        hyprctl dispatch closewindow "$IS_OPEN"
        IS_OPEN=""
    fi
fi

hyprctl dispatch moveworkspacetomonitor "special:$WORKSPACE $ACTIVE_MONITOR"

if [ -n "$IS_OPEN" ]; then
    hyprctl dispatch togglespecialworkspace "$WORKSPACE"
else
    # Launch with a window rule set inline
    hyprctl dispatch exec "[workspace special:$WORKSPACE silent] $CMD"
    sleep 0.3
    hyprctl dispatch togglespecialworkspace "$WORKSPACE"
fi