Add a book to the reading-list Obsidian vault.

For adding multiple books at once, use `.agents/add-books-batch.md` instead — it is significantly more token-efficient.

## Input

The user provides a book title, author + title, or description. Use your knowledge to fill in details (author, year, type, key concepts, related books). If ambiguous, ask.

## Steps

Read `.agents/conventions-core.md` for templates and tag conventions.

### 1. Research the book

- Identify: full title, author(s), publication year(s)/editions, type (Book / Article / Multi-volume)
- Determine which concepts it covers (check existing `vault/concepts/` pages)
- Identify related books already in the vault (check `vault/books/`)
- Determine which tier it belongs to in `vault/Reading List.md`, or suggest a new section
- Generate appropriate YAML frontmatter tags (see conventions)
- Assess the three dimensions: impact (industry influence), unlock, effort (see `vault/Priority.md`)

### 2. Create the book page

- Create `vault/books/{Title}.md` using the template from `.agents/conventions.md`
- Include YAML frontmatter with tags (book, status/not-started, author/kebab-name, topic tags, dimensions)
- Write a "Why Read This" section (1-3 sentences)
- Link to existing concept pages in Key Concepts
- Link to related books already in the vault in Related (with one-line explanation)

### 3. Create or update the author page

- If `vault/authors/{Author}.md` exists: add the new book to their "Books in This List" section
- If it doesn't exist: create it following the pattern of existing author pages (bio, books list, key contributions, connections)

### 4. Documentation sweep (mandatory)

Adding a book touches more than one file. Complete every item or the vault becomes inconsistent.

**Token-saving hints**: use `offset`/`limit` on Read to avoid loading entire files.

- [ ] **Concept pages** — for each concept the book covers:
  - If the concept page exists in `vault/concepts/`, add this book to its "Books Covering This" section
  - If it doesn't exist AND 2+ books now reference it: create the concept page and add it to `vault/Concepts Index.md`
- [ ] **Reading List.md** — add the book to the appropriate tier/section
  - Format: `- [[books/Title|Title]] - [[authors/Author|Author]]`
  - Hint: search for the tier header, read only that section
- [ ] **Knowledge map** — update `.agents/knowledge-map.md`:
  - Add the book to the adjacency list (starts after `### Books` header)
  - If it extends a lineage chain, update that chain
  - If it belongs to an existing cluster, add it there
  - Hint: the adjacency list is in the second half of the file; use offset to skip lineage/clusters
- [ ] **Reading Paths** — if the book fits an existing path in `vault/Reading Paths.md`, add it
- [ ] **Related books** — update the "Related" section of existing books that connect to the new one (bidirectional links)
- [ ] **Changelog** — append to `vault/Changelog.md` under today's date: `- Added [[books/Title|Title]] by Author`
  - Hint: read only lines 1-10 to find the date header, then insert after it

### 5. Summary

Report to the user:

- What was created/updated
- Full list of files touched
- The book's connections to the existing vault
- Any doc sweep items that were skipped and why
