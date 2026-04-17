# Priority System

Priority is not stored — it's computed from intrinsic book dimensions + current context.

## Dimensions (intrinsic to the book)

Each book page carries these in its metadata table and frontmatter tags:

| Dimension  | Question                                   | Values                                                             |
| ---------- | ------------------------------------------ | ------------------------------------------------------------------ |
| **Impact** | Will this change how I work day-to-day?    | `high` / `medium` / `low`                                          |
| **Unlock** | Does this open up other books or concepts? | `high` / `medium` / `low`                                          |
| **Effort** | How long to read and absorb?               | `light` (<200p or article) / `medium` (200-400p) / `heavy` (400p+) |

These are properties of the book itself and don't change with context.

## Sorting Function

To decide what to read next, sort by:

1. **Impact** descending (high > medium > low)
2. **Unlock** descending (high > medium > low)
3. **Effort** ascending (light > medium > heavy)

In other words: maximize value, minimize cost.

## Context Override

The sorting function gives you a default order. Override it when:

- **Current work context** makes a book immediately relevant (doing architecture work → architecture books jump to the top regardless of score)
- **A prerequisite was just completed** — what it unlocks is now ready (finishing TDD by Example → BDD books become actionable)
- **Time budget** is limited — filter by `effort/light` for quick wins

## Tags

Book pages carry dimensions as frontmatter tags:

```yaml
tags:
  - impact/high
  - unlock/high
  - effort/medium
```

And in the metadata table:

```markdown
| Impact | `high` |
| Unlock | `high` |
| Effort | `medium` |
```

Use Obsidian tag search to filter:

- `tag:impact/high` — highest daily-work value
- `tag:unlock/high` — gateway books that open up others
- `tag:effort/light` — quick reads when time is short
- Combine: `tag:impact/high tag:effort/light` — best bang for buck
