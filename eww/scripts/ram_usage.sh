#!/usr/bin/env bash
# RAM usage percentage (0-100) using /proc/meminfo

# Read total and available memory in kB
total=$(awk '/^MemTotal:/ {print $2}' /proc/meminfo)
available=$(awk '/^MemAvailable:/ {print $2}' /proc/meminfo)

# Calculate used percentage
used=$(( (total - available) * 100 / total ))

echo $used
