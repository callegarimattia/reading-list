---
tags:
  - book
  - status/completed
  - author/dan-north
  - bdd
  - tdd
  - agile
  - impact/medium
  - unlock/high
  - effort/light
---

# Introducing BDD

| Field     | Value                                |
| --------- | ------------------------------------ |
| Author    | [[authors/Dan North\|Dan North]]     |
| Type      | Article / Essay (original blog post) |
| Published | 2006                                 |
| Status    | `completed`                          |
| Impact    | `medium`                             |
| Unlock    | `high`                               |
| Effort    | `light`                              |

## Why Read This

The foundational text that coined [[concepts/Behavior-Driven Development|BDD]]. Dan North describes the journey from [[concepts/Test-Driven Development|TDD]] frustrations to a new way of thinking about tests as behavior specifications.

## Key Concepts

- [[concepts/Behavior-Driven Development]]
- [[concepts/Acceptance Testing]]
- [[concepts/Ubiquitous Language]]
- Given-When-Then template

## Links

- [Original blog post](https://dannorth.net/introducing-bdd/)

## Summary

Dan North wrote this foundational post after noticing that TDD practitioners kept stumbling over the same questions: where to start, what to test, how much per test, and how to name tests. He traced the root cause to the word "test" itself — it frames the activity as verification rather than specification.

The breakthrough came in stages:

1. **Test names as sentences.** Inspired by the agiledox tool (which turned `testFindsCustomerById` into readable documentation), North adopted a `should`-prefixed naming convention. This forced each method to describe a single behaviour and made it obvious when a responsibility belonged elsewhere.
2. **"Behaviour" over "test."** Replacing the word "test" with "behaviour" dissolved most coaching problems. Questions like "what should I test?" became "what should this class do?" — a much easier question to answer.
3. **Given-When-Then.** Working with Chris Matts, North realised acceptance criteria are just behaviour descriptions at a higher level. They created a sentence template — _Given_ some context, _When_ an event occurs, _Then_ expect these outcomes — that became a shared language between developers, testers, and business analysts.
4. **Ubiquitous language.** Drawing on Eric Evans' DDD, BDD insists the scenario language maps directly to the domain model, keeping analysis, code, and tests aligned.

North built JBehave (later ported to Ruby as Rbehave; Dave Astels' community produced RSpec) to execute these scenarios. Each Given/When/Then fragment maps to a class that operates on a shared "world" object, starting as mock-backed unit specs and evolving into end-to-end functional tests as the system grows.

## Notes

-

## Related

- [[books/BDD in Action]] — the practical handbook that builds on this foundation
- [[books/Specification by Example]] — the broader pattern that BDD fits into
