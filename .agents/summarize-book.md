Fetch and write a summary for a book in the reading-list Obsidian vault.

## Input

The user provides a book title or partial match. Find the corresponding page in `vault/books/`.

## Steps

### 1. Find the book page

- Look in `vault/books/` for a matching file
- Read it to get the full title, author, and current content
- If the book page doesn't exist, tell the user to add it first
- If the book already has a Summary section, ask the user if they want to replace or enrich it

### 2. Fetch summaries from sources

Two modes are available. The user can specify `--lean` for token efficiency, or default to thorough.

**Lean mode** (`--lean`): Use 1 web source (Goodreads) plus your own training knowledge. Best for well-known books where the LLM has reliable information. Saves ~50% tokens vs thorough mode.

**Thorough mode** (default): Use at least 2 web sources from the list below.

**Primary sources:**

- Goodreads: `https://www.goodreads.com/search?q={url-encoded-title}` — description, themes, reader takeaways
- Amazon: `https://www.amazon.com/s?k={url-encoded-title}` — "About this book" and top review insights

**Author/official sources (pick the most relevant):**

- The author's own website or blog (e.g., martinfowler.com, blog.cleancoder.com, dannorth.net)
- Official project sites (e.g., dora.dev for Accelerate, refactoring.com for Refactoring)

**Community sources (supplement if primary sources are thin):**

- dev.to or medium.com summaries (cross-reference claims)
- InfoQ articles or talks by the author

When fetching, extract:

- Book description and structure
- Key concepts, principles, and frameworks introduced
- Most important takeaways
- Common criticisms or limitations

### 3. Synthesize and write the summary

Write a `## Summary` section in the book page with:

- **Opening paragraph**: 1-2 sentences on what the book is about and how it's structured
- **Key sections with bullet points**: the most important ideas, organized by theme (not by chapter). Use `###` subheadings.
- **Best use case**: who benefits most from reading this (1 sentence)
- **Criticisms worth noting**: fair criticisms from readers (2-3 bullets)
- **Source attribution**: `*Sources: goodreads.com, [other sources used]*` at the end

### Style guidelines

- Be specific: name the concepts, frameworks, and principles — don't just say "covers testing practices"
- Be concise: bullet points over paragraphs
- Be fair: include criticisms, not just praise
- Use wiki-links to existing concept pages where relevant (e.g., `[[concepts/Refactoring]]`)
- Place the Summary section between "## Related" and "## Notes"

### 4. Update the book page

- Insert or replace the `## Summary` section
- Don't modify any other sections (Why Read This, Key Concepts, Related, etc.)

### 5. Report

- Show the user a brief summary of what was found and written
- List the sources used
