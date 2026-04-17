#!/usr/bin/env bash
# Validates that all [[wiki-links]] point to existing files.
# Usage: ./scripts/validate-wikilinks.sh

set -euo pipefail

BASE_DIR="vault"
broken=0
total=0

# Extract wiki-links from all .md files, skipping code blocks
extract_links() {
  find "$BASE_DIR" -name '*.md' -not -name 'CLAUDE.md' | sort | while read -r file; do
    awk '/^```/{skip=!skip; next} !skip{print}' "$file" | \
    grep -oE '\[\[[^]]+\]\]' | \
    while read -r raw; do
      # Strip [[ and ]]
      link="${raw#\[\[}"
      link="${link%\]\]}"
      # Strip display name: handle both \| (escaped) and | (plain)
      link=$(echo "$link" | sed 's/\\|.*//;s/|.*//')
      echo "$(basename "$file")|$link"
    done
  done
}

while IFS='|' read -r source link; do
  total=$((total + 1))

  # Resolve target path
  if [[ "$link" == *"/"* ]]; then
    target="$BASE_DIR/$link.md"
  else
    target="$BASE_DIR/$link.md"
  fi

  if [ ! -f "$target" ]; then
    echo "BROKEN [$source]: [[$link]] -> $target not found"
    broken=$((broken + 1))
  fi
done < <(extract_links)

if [ "$broken" -eq 0 ]; then
  echo "OK: all $total wiki-links resolve to existing files"
  exit 0
else
  echo ""
  echo "FAILED: $broken broken links out of $total total"
  exit 1
fi
