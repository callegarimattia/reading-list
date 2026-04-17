# Clean Architecture

[[authors/Robert C Martin|Robert C. Martin]]'s architectural approach: dependencies point inward toward the domain. The Dependency Rule ensures that business logic is independent of frameworks, databases, and delivery mechanisms.

## Core Ideas

- The Dependency Rule (outer layers depend on inner, never the reverse)
- Concentric circles: Entities > Use Cases > Interface Adapters > Frameworks
- Framework independence
- Testability through dependency inversion

## Relationship to Other Concepts

- [[concepts/SOLID Principles]] applied at the architecture level
- Complements [[concepts/Domain-Driven Design]] (domain at the center)
- A specific instantiation of [[concepts/Software Architecture]]

## Books Covering This

- [[books/Clean Architecture]] — the full treatment (Martin)
