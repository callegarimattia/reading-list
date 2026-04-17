---
tags:
  - concept
---

# Coupling

The degree of interdependence between software modules. Coupling determines how much a change in one component forces changes in others. Lower coupling generally means easier evolution, but some coupling is inevitable and even beneficial.

## Key Dimensions

- **Structural coupling** — direct code dependencies
- **Temporal coupling** — runtime ordering requirements
- **Deployment coupling** — must deploy together
- **Domain coupling** — shared business concepts

## Related Concepts

- [[concepts/Software Architecture]]
- [[concepts/SOLID Principles]]
- [[concepts/Domain-Driven Design]]
- [[concepts/Design Patterns]]

## Books Covering This

- [[books/Balancing Coupling in Software Design|Balancing Coupling in Software Design]] — dedicated treatment of coupling as a multi-dimensional design tool
- [[books/Clean Architecture|Clean Architecture]] — the Dependency Rule minimizes coupling across boundaries
- [[books/Building Microservices|Building Microservices]] — coupling as the key challenge of distributed systems
- [[books/Design Patterns|Design Patterns]] — patterns as solutions to common coupling problems
- [[books/Domain-Driven Design|Domain-Driven Design]] — Bounded Contexts as coupling boundaries
