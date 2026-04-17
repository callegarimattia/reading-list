# Legacy Code

Code without tests ([[authors/Michael Feathers|Feathers]]' definition). Code you're afraid to change because you don't know what it does or whether your changes will break something.

## Core Ideas

- Legacy code = code without tests
- The Legacy Code Change Algorithm (identify, find test points, break dependencies, write tests, change)
- Seams: places to alter behavior without editing (object, link, preprocessing)
- Characterization tests: document what code actually does
- Sprout/Wrap techniques for safe new behavior

## Relationship to Other Concepts

- [[concepts/Refactoring]] assumes tests exist; legacy code work gets you there
- [[concepts/Test-Driven Development]] is the target state
- [[concepts/Technical Debt]] accumulates in legacy codebases

## Books Covering This

- [[books/Working Effectively with Legacy Code]] — the definitive guide (Feathers)
- [[books/Refactoring]] — what to do once you have tests (Fowler)
