# Reading List Vault — Agent Conventions

Full policy reference. For templates-only, use `conventions-core.md` instead (saves tokens).

## Repo Structure

```text
.agents/                             # Agent instructions (you are here).
  conventions.md                     # This file (full policies).
  conventions-core.md                # Templates & tag rules only (compact).
  knowledge-map.md                   # Relationship graph — read this first.
  add-book.md                        # Procedure for adding a single book.
  add-books-batch.md                 # Procedure for bulk-adding books (token-efficient).
  summarize-book.md                  # Procedure for summarizing a book.
.claude/commands/                    # Claude Code skill wiring (points to .agents/).
vault/                               # The Obsidian vault.
  books/                             # One page per book.
  concepts/                          # One page per concept.
  authors/                           # One page per author.
  Reading List.md                    # Main index. Single source of truth.
  Concepts Index.md                  # Topic-based navigation.
  Reading Paths.md                   # Curated 4-6 book journeys by goal.
  Priority.md                        # Dimension definitions and sorting function.
  Changelog.md                       # Append-only log of changes.
hooks/                               # Git pre-commit hook.
scripts/                             # Validators.
```

## How to Navigate

1. **Start with `.agents/knowledge-map.md`** — the full graph at a glance
2. **`vault/Reading List.md`** — canonical list of all books, tiered by reading order
3. **`vault/Concepts Index.md`** — find books by topic
4. **`vault/Reading Paths.md`** — curated sequences for specific goals

## File Naming Conventions

- **Books**: full title as filename (e.g., `Working Effectively with Legacy Code.md`)
- **Concepts**: noun phrase (e.g., `Domain-Driven Design.md`, `SOLID Principles.md`)
- **Authors**: display name (e.g., `Kent Beck.md`, `Gang of Four.md`, `Dave Thomas and Andy Hunt.md`)

## Link Conventions

- Cross-folder: `[[folder/Name|Display Name]]` (e.g., `[[books/Clean Code|Clean Code]]`)
- Same folder: `[[Name]]` (e.g., within `concepts/`, use `[[Refactoring]]`)
- Always link to author from book pages and vice versa

## Book Page Template

Every book page must have:

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

1-3 sentences on what this book teaches and why it matters.

## Key Concepts

- [[concepts/Concept Name]]
- ...

## Related

- [[books/Other Book]] — one-line explanation of relationship

## Notes

- (reader's notes go here)
```

### Optional fields in the metadata table

- `Series` — e.g., "Robert C. Martin Series", "Martin Fowler Signature Series"

## YAML Frontmatter (for Obsidian tags & search)

Every book page should have frontmatter:

```yaml
---
tags:
  - book
  - status/not-started
  - author/kebab-case-name
  - topic tags (e.g., tdd, refactoring, ddd, agile, devops)
  - impact/high
  - unlock/high
  - effort/medium
---
```

Tag conventions:

- `book`, `concept`, `author` — page type
- `status/not-started`, `status/in-progress`, `status/completed`, `status/on-hold`
- `author/kent-beck`, `author/martin-fowler`, etc.
- Topic tags: lowercase, kebab-case (e.g., `test-driven-development`, `design-patterns`, `domain-driven-design`)
- `impact/high`, `unlock/high`, `effort/medium` — see `vault/Priority.md` for definitions

## Status Tracking

Valid statuses: `not-started` | `in-progress` | `completed` | `on-hold`

When changing status:

1. Update the `Status` field in the book's metadata table
2. Update the `status/*` tag in frontmatter
3. Move the entry in `vault/Reading List.md` to the correct section

## When to Create Pages

- **Concept page**: when 2+ books reference the same idea
- **Author page**: every author with a book in the vault gets one
- **Book page**: every book recommended in the vault

## Content Ownership (don't duplicate)

- **Book pages** own: "Why Read This", reading notes, status, dimensions
- **Concept pages** own: the definition, relationship to other concepts
- **Author pages** own: bio, bibliography, connections to other authors
- **Knowledge map** (`.agents/knowledge-map.md`) owns: lineage chains, clusters, adjacency list
- **Reading List.md** owns: canonical list and reading order

Cross-link between them. Don't copy content.

## When Adding a New Book

See `.agents/add-book.md` for the full procedure.

## When Adding a New Concept

1. Create the concept page in `vault/concepts/`
2. Add it to `vault/Concepts Index.md` under the right category
3. Update book pages that relate to this concept (add to their Key Concepts)
4. Append to `vault/Changelog.md`
