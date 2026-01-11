#!/bin/bash
TEMP=$(sensors | awk '/k10temp-pci/ {found=1} found && /Tctl:/ {gsub("\\+",""); print int($2); exit}')
echo "$TEMP"
