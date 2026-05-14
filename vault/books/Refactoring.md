---
tags:
  - book
  - status/completed
  - author/martin-fowler
  - refactoring
  - code-smells
  - tdd
  - impact/high
  - unlock/high
  - effort/medium
---

# Refactoring: Improving the Design of Existing Code

| Field     | Value                                          |
| --------- | ---------------------------------------------- |
| Author    | [[authors/Martin Fowler\|Martin Fowler]]       |
| Type      | Book                                           |
| Published | 1999 (1st ed, Java), 2018 (2nd ed, JavaScript) |
| Status    | `completed`                                    |
| Impact    | `high`                                         |
| Unlock    | `high`                                         |
| Effort    | `medium`                                       |

## Why Read This

The definitive catalog of refactoring techniques. Teaches how to systematically improve code structure without changing behavior — the discipline that makes [[concepts/Test-Driven Development|TDD]] and [[concepts/Legacy Code|legacy code]] work possible.

## Key Concepts

- [[concepts/Refactoring]]
- [[concepts/Code Smells]]
- [[concepts/Test-Driven Development]] (refactoring assumes tests exist)
- Catalog of named refactorings (Extract Method, Move Field, etc.)

## Summary

A disciplined catalog of techniques for restructuring existing code — altering its internal structure without changing observable behavior. The book is split between principles/process (when and why to refactor) and a reference catalog of ~70 named refactorings organized by category.

### Core Principles

- **Behavior-preserving transformations**: every refactoring step leaves the system working; safety comes from small, incremental moves
- **Refactoring requires tests**: comprehensive test coverage is a prerequisite — tests are your safety net
- **Daily practice, not an event**: refactor before adding a feature (to make room), after adding it (to clean up), and during code review

### The Catalog

- **Composing Methods**: Extract Function, Inline Function, Extract Variable, Replace Temp with Query
- **Moving Features**: Move Function/Field, Extract/Inline Class, Hide Delegate
- **Organizing Data**: Replace Primitive with Object, Replace Array with Object, Encapsulate Collection
- **Simplifying Conditionals**: Decompose Conditional, Replace Conditional with Polymorphism, Introduce Special Case
- **Dealing with Inheritance**: Pull Up / Push Down Method, Replace Subclass with Delegate, Replace Superclass with Delegate

### Code Smells

Fowler and Kent Beck introduce named code smells as heuristics for _when_ to refactor — Long Method, Feature Envy, Data Clumps, Shotgun Surgery, Divergent Change, etc. Named smells give teams a shared vocabulary for code review conversations.

### Process Model

- Work in **two hats**: refactoring hat (structure only, no new behavior) vs. feature hat — never wear both at once
- Use automated tests to run after every small step; if tests break, undo and try again
- Modern IDEs automate many catalog refactorings; the book's value is knowing _which_ transformation to apply and _why_

### Best Use Case

Most valuable for developers who write or maintain production code daily and want a shared vocabulary and systematic approach to incremental improvement.

### Criticisms Worth Noting

- Tooling discussion (especially 1st edition) is dated — modern IDEs have automated the mechanics of most catalog entries
- Language-specific examples (Java in 1st ed, JavaScript in 2nd) can feel narrow for developers in other ecosystems
- Less guidance for legacy codebases without test coverage — pairs poorly without [[books/Working Effectively with Legacy Code]]

_Sources: goodreads.com, refactoring.com_

## Related

- [[books/Working Effectively with Legacy Code]] — what to do when you don't have tests yet
- [[books/Test-Driven Development By Example]] — the testing discipline this book presupposes
- [[books/Tidy First]] — Beck's economic framing of when to refactor
- [[books/Clean Code]] — complementary perspective on code quality

## Notes

-
