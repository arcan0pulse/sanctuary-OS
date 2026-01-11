#!/bin/bash
# ~/.config/eww/scripts/power_draw.sh

# Reads PPT from amdgpu sensors output (in watts)
power=$(sensors 2>/dev/null | awk '/amdgpu-pci/ {found=1} found && /PPT:/ {gsub("W",""); print int($2); exit}')
echo "${power:-0}"
