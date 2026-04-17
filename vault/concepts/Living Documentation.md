# Living Documentation

Documentation that is generated from or tightly coupled to the system's executable specifications, ensuring it stays up to date as the software evolves.

## Core Ideas

- Documentation that can't go stale (it fails the build if wrong)
- Automated [[concepts/Acceptance Testing|acceptance tests]] double as docs
- Bridges the gap between specs and implementation
- Reduces the need for separate documentation artifacts

## Relationship to Other Concepts

- Produced by [[concepts/Behavior-Driven Development]] workflows
- A goal of [[concepts/Specification by Example]]
- Built on top of [[concepts/Acceptance Testing]]

## Books Covering This

- [[books/BDD in Action]] — shows how to generate living docs from BDD specs
- [[books/Specification by Example]] — the pattern that makes this possible
