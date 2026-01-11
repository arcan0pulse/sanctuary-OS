#!/bin/bash
# ~/.config/eww/scripts/storage_usage.sh

df -h / | awk 'NR==2 {gsub("%","",$5); print $5}'
