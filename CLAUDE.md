# Reading List Vault — Rules & Conventions

This is an Obsidian-style knowledge vault tracking software engineering books, authors, and concepts.

## Repo Structure

```text
reading-list/
├── CLAUDE.md                        # This file. Vault rules and conventions.
├── README.md                        # Repo documentation.
├── hooks/pre-commit                 # Git pre-commit hook (lint, format, validate).
├── scripts/validate-frontmatter.sh  # Book page structure validator.
├── .markdownlint.yaml               # Markdown lint config.
├── .prettierrc.yaml                 # Prettier config.
└── vault/                           # The Obsidian vault (open this in Obsidian).
    ├── Reading List.md              # Main index. Single source of truth.
    ├── Knowledge Map.md             # Full relationship graph. Read this first.
    ├── Concepts Index.md            # Topic-based navigation.
    ├── Reading Paths.md             # Curated 4-6 book journeys by goal.
    ├── Priority.md                  # Sorting function for what to read next.
    ├── Changelog.md                 # Append-only log of changes.
    ├── books/                       # One page per book.
    ├── concepts/                    # One page per concept.
    └── authors/                     # One page per author.
```

## How to Navigate

1. **Start with `vault/Knowledge Map.md`** — gives you the full graph at a glance
2. **`vault/Reading List.md`** — the canonical list of all books, tiered by reading order
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
- `impact/high`, `unlock/high`, `effort/medium` — see `vault/Priority.md` for dimension definitions

## Status Tracking

Valid statuses: `not-started` | `in-progress` | `completed` | `on-hold`

When changing status:

1. Update the `Status` field in the book's metadata table
2. Update the `status/*` tag in frontmatter
3. Move the entry in Reading List.md to the correct section

## When to Create Pages

- **Concept page**: when 2+ books reference the same idea
- **Author page**: every author with a book in the vault gets one
- **Book page**: every book recommended in the vault

## Content Ownership (don't duplicate)

- **Book pages** own: "Why Read This", reading notes, status
- **Concept pages** own: the definition, relationship to other concepts
- **Author pages** own: bio, bibliography, connections to other authors
- **Knowledge Map** owns: lineage chains, clusters, adjacency list
- **Reading List.md** owns: canonical list and reading order

Cross-link between them. Don't copy content.

## When Adding a New Book

1. Create the book page in `vault/books/` using the template above
2. Create or update the author page in `vault/authors/`
3. Link to existing concept pages (create new ones if 2+ books now reference the idea)
4. Add the book to `vault/Reading List.md` in the appropriate tier
5. Update `vault/Knowledge Map.md` — add to adjacency list, update lineage chains if applicable
6. Append to `vault/Changelog.md`

## When Adding a New Concept

1. Create the concept page in `vault/concepts/`
2. Add it to `vault/Concepts Index.md` under the right category
3. Update book pages that relate to this concept (add to their Key Concepts)
4. Append to `vault/Changelog.md`
