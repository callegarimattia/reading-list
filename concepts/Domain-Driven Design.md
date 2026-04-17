# Domain-Driven Design (DDD)

An approach to software development that centers the design on the business domain. Created by [[authors/Eric Evans|Eric Evans]].

## Core Ideas

- [[concepts/Ubiquitous Language]] — shared vocabulary embedded in code
- Bounded Context — explicit boundary within which a model applies
- Strategic Design: Context Mapping, Anti-Corruption Layer, Shared Kernel
- Tactical Patterns: Entities, Value Objects, Aggregates, Repositories, Domain Events
- Model-Driven Design: the model IS the code

## Relationship to Other Concepts

- Shares [[concepts/Ubiquitous Language]] emphasis with [[concepts/Behavior-Driven Development|BDD]]
- Bounded Context became the primary microservices sizing heuristic
- Engages directly with [[concepts/Software Complexity|essential complexity]] (Brooks)
- [[concepts/Design Patterns]] at the domain level

## Books Covering This

- [[books/Domain-Driven Design]] — Evans' "Blue Book" (foundational)
- [[books/Implementing Domain-Driven Design]] — Vernon's "Red Book" (practical)
- [[books/Domain-Driven Design Distilled]] — Vernon's short intro
- [[books/Analysis Patterns]] — Fowler's precursor
- [[books/Building Microservices]] — Bounded Context applied to microservices
