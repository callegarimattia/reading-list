# Conventions — Quick Reference

Compact reference for agents. For full policies see `conventions.md`.

## File Names

- Books: `vault/books/{Full Title}.md`
- Concepts: `vault/concepts/{Noun Phrase}.md`
- Authors: `vault/authors/{Display Name}.md`

## Links

- Cross-folder: `[[folder/Name|Display Name]]`
- Same folder: `[[Name]]`

## Book Page Template

```yaml
---
tags:
  - book
  - status/not-started
  - author/kebab-case-name
  - topic-tags (lowercase, kebab-case)
  - impact/{high|medium|low}
  - unlock/{high|medium|low}
  - effort/{light|medium|heavy}
---
```

```markdown
# Full Book Title

| Field     | Value                            |
| --------- | -------------------------------- |
| Author    | `[[authors/Name\|Display Name]]` |
| Type      | Book / Article / Multi-volume    |
| Published | Year (editions if relevant)      |
| Status    | `not-started`                    |
| Impact    | `high` / `medium` / `low`        |
| Unlock    | `high` / `medium` / `low`        |
| Effort    | `light` / `medium` / `heavy`     |

## Why Read This

1-3 sentences.

## Key Concepts

- [[concepts/Concept Name]]

## Related

- [[books/Other Book]] — one-line explanation

## Notes

-
```

## Author Page Format

Follow existing pages in `vault/authors/` — bio line, Books in This List, Key Contributions, Connections.

## Statuses

`not-started` | `in-progress` | `completed` | `on-hold`

## Dimension Notes

- **Impact** = industry influence (how much the book shaped the field). See `vault/Priority.md`.
- **Unlock** = gateway value (does it open up other books/concepts).
- **Effort** = reading time and density.

## When to Create Concept Pages

Only when 2+ books reference the same idea.
