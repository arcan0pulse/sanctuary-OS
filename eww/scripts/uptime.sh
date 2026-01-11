#!/usr/bin/env bash
# Outputs system uptime as HH:MM

# Get total uptime in seconds
uptime_sec=$(cut -d. -f1 /proc/uptime)

# Compute hours and minutes
hours=$((uptime_sec / 3600))
minutes=$(( (uptime_sec % 3600) / 60 ))

# Format as HH:MM with leading zeros
printf "%02d : %02d\n" $hours $minutes
