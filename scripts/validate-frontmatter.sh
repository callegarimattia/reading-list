#!/usr/bin/env bash
# Validates book pages have required frontmatter, metadata fields, and sections.
# Usage: ./scripts/validate-frontmatter.sh

set -euo pipefail

dir="vault/books"
errors=0
checked=0

required_tags=("book" "status/" "impact/" "unlock/" "effort/")
required_fields=("Author" "Type" "Published" "Status" "Impact" "Unlock" "Effort")
required_sections=("## Why Read This" "## Key Concepts" "## Related" "## Notes")

for file in "$dir"/*.md; do
  checked=$((checked + 1))
  name=$(basename "$file")

  for tag in "${required_tags[@]}"; do
    grep -q "  - $tag" "$file" 2>/dev/null ||
      { echo "FAIL [$name]: missing tag '$tag'"; errors=$((errors + 1)); }
  done

  for field in "${required_fields[@]}"; do
    grep -q "| $field" "$file" 2>/dev/null ||
      { echo "FAIL [$name]: missing field '$field'"; errors=$((errors + 1)); }
  done

  for section in "${required_sections[@]}"; do
    grep -q "$section" "$file" 2>/dev/null ||
      { echo "FAIL [$name]: missing section '$section'"; errors=$((errors + 1)); }
  done
done

if [ $errors -eq 0 ]; then
  echo "OK: all $checked book pages valid"
else
  echo ""
  echo "FAILED: $errors errors across $checked books"
  exit 1
fi
