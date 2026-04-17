---
tags:
  - book
  - status/completed
  - author/robert-c-martin
  - clean-code
  - software-craftsmanship
  - refactoring
  - impact/high
  - unlock/high
  - effort/medium
---

# Clean Code: A Handbook of Agile Software Craftsmanship

| Field       | Value                                                |
| ----------- | ---------------------------------------------------- |
| Author      | [[authors/Robert C Martin\|Robert C. Martin]]        |
| Type        | Book                                                 |
| Published   | 2008                                                 |
| Status      | `completed`                                        |
| Impact      | `high`                                     |
| Unlock      | `high`                                     |
| Effort      | `medium`                                   |

## Why Read This

The handbook on writing readable, maintainable code. Naming, functions, comments, formatting, error handling, and the Boy Scout Rule. One of the most widely read programming books.

## Key Concepts

- [[concepts/Software Craftsmanship]]
- [[concepts/Code Smells]]
- [[concepts/Refactoring]]
- Boy Scout Rule ("leave code cleaner than you found it")
- Meaningful names, small functions, minimal comments

## Related

- [[books/Refactoring]] — the technique catalog for improving code Clean Code identifies as problematic
- [[books/The Clean Coder]] — professional discipline companion
- [[books/Clean Architecture]] — architecture-level companion
- [[books/The Pragmatic Programmer]] — complementary developer mindset

## Summary

The book is structured in three parts: foundational principles, practical case studies demonstrating refactoring, and a reference guide of code smells and heuristics.

### Core Principles

- **Naming**: use descriptive, consistent names; meaningful names over cryptic abbreviations
- **Functions**: single responsibility, small and focused, minimize arguments (ideally 0-2)
- **Comments**: are "failures" to express meaning through code itself — prefer self-documenting code
- **Formatting**: consistent formatting as a communication tool
- **Error handling**: comprehensive but clean; don't obscure logic with try/catch noise
- **Boy Scout Rule**: leave code cleaner than you found it

### Key Heuristics

- The ratio of time spent *reading* code vastly exceeds time *writing* it — readability is paramount
- "Clean code always looks like it was written by someone who cares"
- Working code is not enough; it must communicate intent
- Refactoring is a continuous discipline, not a one-time event

### SOLID Principles (detailed in companion *Agile Software Development PPP*)

- Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, Dependency Inversion

### Criticisms Worth Noting

- Heavy Java focus limits direct applicability to other languages
- Some examples demonstrate over-engineering rather than pragmatic improvement
- Prescriptive style can feel rigid; best read as guidelines not absolute rules

*Sources: Goodreads reviews, blog.cleancoder.com*

## Notes

-
