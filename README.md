# Reading List

An Obsidian vault tracking software engineering books, authors, and concepts — all cross-linked with `[[wiki-links]]`.

## What's Inside

- **61 books** across 6 tiers (foundational → deep)
- **41 authors** with bibliographies and connections
- **26 concepts** with definitions and cross-references
- **8 reading paths** — curated journeys (BDD, Architecture, Legacy Rescue, DDD, DevOps, etc.)

## How to Use

Open the `vault/` folder as a vault in [Obsidian](https://obsidian.md/). The graph view will show all connections between books, authors, and concepts.

### Key Pages (inside `vault/`)

| Page                | Purpose                                         |
| ------------------- | ----------------------------------------------- |
| `Reading List.md`   | Main index — all books, tiered by reading order |
| `Concepts Index.md` | Browse by topic                                 |
| `Reading Paths.md`  | Curated 4-6 book sequences by goal              |
| `Priority.md`       | How to decide what to read next                 |

## Repo Structure

```text
vault/                  → The Obsidian vault (open this in Obsidian)
  books/                → one page per book (metadata, summary, related, notes)
  authors/              → one page per author (bio, bibliography, connections)
  concepts/             → one page per concept (definition, relationships, books)
.agents/                → AI agent instructions (works with any coding assistant)
  conventions.md        → Full vault rules and policies
  conventions-core.md   → Compact templates & tag reference
  knowledge-map.md      → Relationship graph for agents
  add-book.md           → Procedure: add a single book
  add-books-batch.md    → Procedure: bulk-add books (token-efficient)
  summarize-book.md     → Procedure: summarize a book
.claude/                → Claude Code wiring (points to .agents/)
hooks/                  → Git hooks (pre-commit)
scripts/                → Validators
```

## Setup

```sh
npm install -g markdownlint-cli prettier   # Install tools
git config core.hooksPath hooks            # Enable pre-commit hook
```

The pre-commit hook runs markdownlint, prettier, and frontmatter validation on every commit.

## Validation

Run manually if needed:

```sh
markdownlint 'vault/**/*.md'          # Lint markdown
prettier --check 'vault/**/*.md'      # Check formatting
./scripts/validate-frontmatter.sh     # Verify book page structure
```

## Adding Books

With any AI coding assistant, point it at `.agents/add-book.md` (single book) or `.agents/add-books-batch.md` (bulk).

With [Claude Code](https://claude.ai/claude-code) specifically:

```sh
/add-book The Mikado Method
/add-books-batch list of titles or PDFs
/summarize-book Clean Code
```

Or manually — see `.agents/conventions.md` for the template and checklist.
