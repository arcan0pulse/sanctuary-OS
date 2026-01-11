#!/bin/bash
# ~/.config/eww/scripts/gpu_temp.sh

# Try NVIDIA first
if command -v nvidia-smi &> /dev/null; then
  nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits
  exit
fi

# Try AMDGPU via sensors
amd_temp=$(sensors 2>/dev/null | grep -m1 "edge:" | awk '{print int($2)}')
if [[ -n "$amd_temp" ]]; then
  echo "$amd_temp"
  exit
fi

# Try Intel GPU via hwmon
intel_temp=$(find /sys/class/hwmon -type f -name "temp1_input" | grep -m1 "card0" | xargs cat 2>/dev/null)
if [[ -n "$intel_temp" ]]; then
  awk "BEGIN {printf \"%.0f\", $intel_temp / 1000}"
  exit
fi

echo "0"
