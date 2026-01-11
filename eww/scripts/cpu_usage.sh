#!/bin/bash
# cpu_usage.sh

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}')   # example
CPU_INT=$(printf "%.0f" "$CPU")  # round to nearest integer
echo "$CPU_INT"
