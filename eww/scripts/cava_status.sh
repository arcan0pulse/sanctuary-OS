VIS_FILE="/tmp/visualizer.txt"
HASH_FILE="/tmp/.last_vis_hash"

if [ ! -s "$VIS_FILE" ]; then
  echo "[ CORE STATUS: ] Standby."
  exit 0
fi

if command -v md5sum >/dev/null 2>&1; then
  CURRENT=$(md5sum "$VIS_FILE" | awk '{print $1}')
elif command -v md5 >/dev/null 2>&1; then   # macOS/BSD fallback
  CURRENT=$(md5 -q "$VIS_FILE")
else
  echo "[ CORE STATUS: ] Unknown (no md5 tool found)"
  exit 1
fi

LAST=$(cat "$HASH_FILE" 2>/dev/null || echo "")

echo "$CURRENT" > "$HASH_FILE"

if [ "$CURRENT" = "$LAST" ] && [ -n "$LAST" ]; then
  echo "[ CORE STATUS: ] Inactive."
else
  echo "[ CORE STATUS: ] Generating visuals."
fi