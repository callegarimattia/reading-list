# Refactoring

Systematically improving the internal structure of code without changing its external behavior. Named transformations (Extract Method, Move Field, etc.) applied in small, safe steps.

## Core Ideas
- Change structure, not behavior
- Small, reversible steps
- Requires tests as a safety net
- Catalog of named refactorings
- DRY principle as a primary motivation
- [[concepts/Code Smells]] as indicators of when to refactor

## Relationship to Other Concepts
- Presupposes [[concepts/Test-Driven Development]] (need tests to refactor safely)
- Core practice of [[concepts/Extreme Programming]]
- [[concepts/Legacy Code]] work is about getting code into a refactorable state
- [[concepts/Technical Debt]] is what accumulates when you don't refactor

## Books Covering This
- [[books/Refactoring]] — the definitive catalog (Fowler)
- [[books/Tidy First]] — economic framing of when to refactor (Beck)
- [[books/Working Effectively with Legacy Code]] — refactoring without tests (Feathers)
- [[books/Clean Code]] — what refactored code should look like (Martin)
