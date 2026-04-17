# Reading List

An Obsidian vault tracking software engineering books, authors, and concepts — all cross-linked with `[[wiki-links]]`.

## What's Inside

- **37 books** across 6 tiers (foundational → deep)
- **23 authors** with bibliographies and connections
- **20 concepts** with definitions and cross-references
- **8 reading paths** — curated journeys (BDD, Architecture, Legacy Rescue, DDD, DevOps, etc.)
- **Knowledge map** — lineage chains, clusters, and a full adjacency list

## How to Use

Open the `vault/` folder as a vault in [Obsidian](https://obsidian.md/). The graph view will show all connections between books, authors, and concepts.

### Key Pages (inside `vault/`)

| Page                | Purpose                                         |
| ------------------- | ----------------------------------------------- |
| `Reading List.md`   | Main index — all books, tiered by reading order |
| `Knowledge Map.md`  | Relationship graph at a glance                  |
| `Concepts Index.md` | Browse by topic                                 |
| `Reading Paths.md`  | Curated 4-6 book sequences by goal              |
| `Priority.md`       | Sorting function for what to read next          |
| `CLAUDE.md`         | Vault conventions and templates                 |

## Repo Structure

```text
vault/              → The Obsidian vault (open this in Obsidian)
  books/            → one page per book (metadata, summary, related, notes)
  authors/          → one page per author (bio, bibliography, connections)
  concepts/         → one page per concept (definition, relationships, books)
scripts/            → Validators
.markdownlint.yaml  → Markdown lint config (targets vault/)
.prettierrc.yaml    → Prettier config (targets vault/)
```

## Validation

```sh
markdownlint 'vault/**/*.md'          # Lint markdown
prettier --check 'vault/**/*.md'      # Check formatting
./scripts/validate-frontmatter.sh     # Verify book page structure
```

## Adding Books

With [Claude Code](https://claude.ai/claude-code):

```sh
/add-book The Mikado Method
/summarize-book Clean Code
```

Or manually — see `vault/CLAUDE.md` for the template and checklist.
