Add a book to the reading-list Obsidian vault.

## Input

The user provides a book title, author + title, or description. Use your knowledge to fill in details (author, year, type, key concepts, related books). If ambiguous, ask.

## Steps

Read `.agents/conventions.md` first for the latest conventions, then execute each step:

### 1. Research the book

- Identify: full title, author(s), publication year(s)/editions, type (Book / Article / Multi-volume)
- Determine which concepts it covers (check existing `vault/concepts/` pages)
- Identify related books already in the vault (check `vault/books/`)
- Determine which tier it belongs to in `vault/Reading List.md`, or suggest a new section
- Generate appropriate YAML frontmatter tags (see conventions)
- Assess the three dimensions: impact, unlock, effort (see `vault/Priority.md`)

### 2. Create the book page

- Create `vault/books/{Title}.md` using the template from `.agents/conventions.md`
- Include YAML frontmatter with tags (book, status/not-started, author/kebab-name, topic tags, dimensions)
- Write a "Why Read This" section (1-3 sentences)
- Link to existing concept pages in Key Concepts
- Link to related books already in the vault in Related (with one-line explanation)

### 3. Create or update the author page

- If `vault/authors/{Author}.md` exists: add the new book to their "Books in This List" section
- If it doesn't exist: create it following the pattern of existing author pages (bio, books list, key contributions, connections)

### 4. Update concept pages

- For each concept the book covers: if the concept page exists, add this book to its "Books Covering This" section
- If a concept doesn't have a page yet AND 2+ books now reference it: create the concept page and add it to `vault/Concepts Index.md`

### 5. Update Reading List.md

- Add the book entry to the appropriate tier/section in `vault/Reading List.md`
- Format: `- [[books/Title|Title]] - [[authors/Author|Author]]`

### 6. Update knowledge map

- Add the book to the adjacency list in `.agents/knowledge-map.md`
- If the book extends a lineage chain, update that chain
- If it belongs to an existing cluster (e.g., a book series), add it there

### 7. Append to Changelog.md

- Add an entry under today's date in `vault/Changelog.md`: `- Added [[books/Title|Title]] by Author`

### 8. Summary

- Show the user what was created/updated
- List the files touched
- Show the book's connections to the existing vault
