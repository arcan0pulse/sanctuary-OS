#!/usr/bin/env bash

# Max length for the label
MAX_LENGTH=40

# Get currently playing song via MPRIS
song=$(playerctl metadata --format '{{ artist }} - {{ title }}' 2>/dev/null)

if [ -z "$song" ]; then
    echo "No music playing"
else
    # Shorten if too long
    if [ ${#song} -gt $MAX_LENGTH ]; then
        echo "${song:0:MAX_LENGTH}…"
    else
        echo "$song"
    fi
fi
