#!/usr/bin/env bash
# Validates that every book page has required frontmatter tags and metadata fields.
# Usage: ./scripts/validate-frontmatter.sh

set -euo pipefail

BOOKS_DIR="vault/books"
errors=0
checked=0

for file in "$BOOKS_DIR"/*.md; do
  checked=$((checked + 1))
  name=$(basename "$file")

  # Check required frontmatter tags
  for tag in "book" "status/" "impact/" "unlock/" "effort/"; do
    if ! grep -q "  - $tag" "$file" 2>/dev/null; then
      echo "FAIL [$name]: missing frontmatter tag '$tag'"
      errors=$((errors + 1))
    fi
  done

  # Check required metadata table fields
  for field in "Author" "Type" "Published" "Status" "Impact" "Unlock" "Effort"; do
    if ! grep -q "| $field" "$file" 2>/dev/null; then
      echo "FAIL [$name]: missing metadata field '$field'"
      errors=$((errors + 1))
    fi
  done

  # Check required sections
  for section in "## Why Read This" "## Key Concepts" "## Related" "## Notes"; do
    if ! grep -q "$section" "$file" 2>/dev/null; then
      echo "FAIL [$name]: missing section '$section'"
      errors=$((errors + 1))
    fi
  done
done

if [ $errors -eq 0 ]; then
  echo "OK: all $checked book pages pass frontmatter validation"
  exit 0
else
  echo ""
  echo "FAILED: $errors errors across $checked book pages"
  exit 1
fi
