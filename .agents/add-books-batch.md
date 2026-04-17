Add multiple books to the vault in a single token-efficient operation.

## Input

The user provides a list of books (titles, files, or descriptions). Use your knowledge to fill in details. If ambiguous, ask before proceeding.

## Token Optimization Strategy

This procedure minimizes token consumption by:
- Reading shared files once at the start, not per book
- Creating all book/author pages first (parallelizable)
- Applying all shared-file updates in a single pass at the end
- Deferring bidirectional link updates to batch them

## Phase 1 — Setup (once)

Read these files once and cache the context for all books:

1. `.agents/conventions-core.md` — templates and tag rules
2. `vault/Reading List.md` — to determine tier placement
3. `.agents/knowledge-map.md` (offset to `### Books` adjacency section) — for connections
4. List existing books: `ls vault/books/`
5. List existing authors: `ls vault/authors/`
6. List existing concepts: `ls vault/concepts/`

From this context, determine for each book:
- Full title, author(s), year, type
- Impact/unlock/effort dimensions
- Tier placement in Reading List
- Connections to existing books (for adjacency list)
- Which concepts it covers (match to existing concept pages)
- Whether the author page exists

## Phase 2 — Create pages (per book, parallelizable)

For each book, create only:
- `vault/books/{Title}.md` — book page using the template
- `vault/authors/{Author}.md` — author page (if it doesn't exist)

If adding many books (>3), use parallel agents. Each agent should:
- Receive the conventions-core template inline (don't make it re-read the file)
- Receive the list of existing books/authors/concepts (don't make it re-list directories)
- Create ONLY book and author pages — no shared file modifications

If an author already exists, update their "Books in This List" section.

## Phase 3 — Shared file updates (once, after all pages created)

Apply all accumulated updates in a single pass per file:

### Reading List.md
- Read once, add all new books to their respective tiers in one edit per tier

### knowledge-map.md
- Read the adjacency section (use offset to skip lineage/clusters)
- Append all new book entries at once
- Add new author entries at once
- Update lineage chains and clusters only if needed

### Changelog.md
- Read only the first 10 lines to find the date header
- Append a single batch entry listing all books added

### Concept pages
- For each concept page referenced by 2+ new books: read once, add all new books at once
- Create new concept pages only if 2+ books (including existing) reference the concept

### Concepts Index.md
- Read once, add any new concept categories in one edit

### Reading Paths.md
- Read once, add books to matching paths in one pass

### Bidirectional links on existing books
- Build a map: `{existing_book -> [new_books_to_link]}`
- Deduplicate: read each affected existing book page exactly once
- Add all pending links in a single edit per file

## Phase 4 — Report

Tell the user:
- Books added (count and list)
- Author pages created vs updated
- New concept pages created
- Reading paths updated
- Total files touched
