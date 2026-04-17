---
tags:
  - book
  - status/not-started
  - author/ola-ellnestam
  - author/daniel-brolund
  - refactoring
  - legacy-code
  - mikado-method
  - impact/high
  - unlock/medium
  - effort/medium
---

# The Mikado Method

| Field       | Value                                                          |
| ----------- | -------------------------------------------------------------- |
| Author      | [[authors/Ola Ellnestam and Daniel Brolund\|Ola Ellnestam & Daniel Brolund]] |
| Type        | Book                                                           |
| Published   | 2014                                                           |
| Status      | `not-started`                                                  |
| Impact      | `high`                                     |
| Unlock      | `medium`                                   |
| Effort      | `medium`                                   |

## Why Read This
A structured technique for making large-scale changes to complex codebases without breaking things. The Mikado Method uses a graph of dependencies to find the safe order of changes — try, fail, record the prerequisite, revert, and work backward from leaves to root.

## Key Concepts
- [[concepts/Refactoring]] (large-scale, structured)
- [[concepts/Legacy Code]] (safe change strategy)
- [[concepts/Technical Debt]] (systematic paydown)
- Mikado Graph (dependency visualization)
- Try-fail-revert-record cycle

## Related
- [[books/Working Effectively with Legacy Code]] — Feathers' dependency-breaking techniques; Mikado Method is a complementary strategy for sequencing those changes
- [[books/Refactoring]] — Fowler's catalog of individual refactorings; Mikado Method sequences them into a safe order
- [[books/Tidy First]] — Beck's economic framing of when to restructure; Mikado answers *how* to restructure safely

## Notes
- 
