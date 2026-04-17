# Knowledge Map

Relationship graph for the entire vault. Sections are ordered by edit frequency.

- **Adjacency List** (top) — updated every time a book is added. Agents: read from here.
- **Lineage Chains** — updated occasionally. Agents: skip unless adding a foundational book.
- **Clusters** — updated rarely. Agents: skip unless adding to a series or creating a new group.

---

## Adjacency List

Every node and its direct connections. One line each. Format: `Node -> [connections]`.

### Books

```text
Introducing BDD -> [BDD in Action, Specification by Example, Test-Driven Development By Example]
BDD in Action -> [Introducing BDD, Specification by Example]
Specification by Example -> [Introducing BDD, BDD in Action, Domain-Driven Design]
Refactoring -> [Working Effectively with Legacy Code, Test-Driven Development By Example, Tidy First, Clean Code]
Patterns of Enterprise Application Architecture -> [Design Patterns, Domain-Driven Design, Clean Architecture]
Analysis Patterns -> [Domain-Driven Design, Patterns of Enterprise Application Architecture]
Planning Extreme Programming -> [Extreme Programming Explained]
UML Distilled -> [Object-Oriented Analysis and Design with Applications, The Unified Modeling Language User Guide]
Domain Specific Languages -> [Domain-Driven Design]
NoSQL Distilled -> [Patterns of Enterprise Application Architecture]
Smalltalk Best Practice Patterns -> [Implementation Patterns, Design Patterns]
Extreme Programming Explained -> [Planning Extreme Programming, Test-Driven Development By Example, Clean Agile, Agile Software Development The Cooperative Game]
Test-Driven Development By Example -> [Introducing BDD, Refactoring, Working Effectively with Legacy Code, BDD in Action]
Implementation Patterns -> [Smalltalk Best Practice Patterns, Clean Code]
Tidy First -> [Refactoring, Clean Code, Working Effectively with Legacy Code]
Agile Software Development Principles Patterns and Practices -> [Clean Code, Clean Architecture, Design Patterns]
Clean Code -> [Refactoring, The Clean Coder, Clean Architecture, The Pragmatic Programmer]
The Clean Coder -> [Clean Code, The Pragmatic Programmer]
Clean Architecture -> [Domain-Driven Design, Patterns of Enterprise Application Architecture, Agile Software Development Principles Patterns and Practices]
Clean Agile -> [Extreme Programming Explained, Agile Software Development The Cooperative Game]
Functional Design -> [Clean Code, Clean Architecture, A Discipline of Programming]
Domain-Driven Design -> [Analysis Patterns, Implementing Domain-Driven Design, Patterns of Enterprise Application Architecture, Specification by Example, Building Microservices]
Working Effectively with Legacy Code -> [Refactoring, Test-Driven Development By Example, Clean Code, The Mikado Method]
The Mikado Method -> [Working Effectively with Legacy Code, Refactoring, Tidy First]
The Pragmatic Programmer -> [Clean Code, Extreme Programming Explained, Refactoring]
The Mythical Man-Month -> [Domain-Driven Design, The Pragmatic Programmer, Agile Software Development The Cooperative Game, The Design of Design]
The Design of Design -> [The Mythical Man-Month]
Object-Oriented Analysis and Design with Applications -> [The Unified Modeling Language User Guide, Design Patterns, UML Distilled]
The Unified Modeling Language User Guide -> [UML Distilled, Object-Oriented Analysis and Design with Applications]
Design Patterns -> [Object-Oriented Analysis and Design with Applications, Patterns of Enterprise Application Architecture, Refactoring, A Pattern Language]
The Art of Computer Programming -> [A Discipline of Programming]
A Discipline of Programming -> [The Art of Computer Programming, The Mythical Man-Month]
Program Development in Java -> [Agile Software Development Principles Patterns and Practices, Design Patterns]
Writing Effective Use Cases -> [Introducing BDD, BDD in Action, Agile Software Development The Cooperative Game]
Agile Software Development The Cooperative Game -> [Extreme Programming Explained, Clean Agile, The Mythical Man-Month]
The Phoenix Project -> [Continuous Delivery, Accelerate]
Accelerate -> [The Phoenix Project, Continuous Delivery]
Building Microservices -> [Domain-Driven Design, Patterns of Enterprise Application Architecture, Monolith to Microservices]
Monolith to Microservices -> [Building Microservices, Working Effectively with Legacy Code]
Implementing Domain-Driven Design -> [Domain-Driven Design, Domain-Driven Design Distilled]
Domain-Driven Design Distilled -> [Domain-Driven Design, Implementing Domain-Driven Design]
Continuous Delivery -> [Accelerate, The Phoenix Project, Extreme Programming Explained, Modern Software Engineering]
A Pattern Language -> [Design Patterns, Smalltalk Best Practice Patterns]
Architecture for Flow -> [Domain-Driven Design, Domain-Driven Design Distilled, Implementing Domain-Driven Design, Building Microservices]
The Async-First Playbook -> [Extreme Programming Explained, Accelerate]
Balancing Coupling in Software Design -> [Domain-Driven Design, Clean Architecture, Design Patterns, Building Microservices]
Continuous Architecture in Practice -> [Clean Architecture, Building Microservices, Continuous Delivery, Software Architecture in Practice]
Domain Storytelling -> [Domain-Driven Design, Domain-Driven Design Distilled, Specification by Example]
Effective Software Architecture -> [Clean Architecture, Continuous Architecture in Practice, Software Architecture and Decision-Making]
Functional and Concurrent Programming -> [Functional Design, A Discipline of Programming]
Modern Software Engineering -> [Continuous Delivery, Accelerate, Test-Driven Development By Example, Extreme Programming Explained]
Patterns for API Design -> [Design Patterns, Patterns of Enterprise Application Architecture, Building Microservices, Principles of Web API Design]
Practical Object-Oriented Design -> [Clean Code, Design Patterns, Refactoring, Agile Software Development Principles Patterns and Practices]
Principles of Web API Design -> [Building Microservices, Patterns for API Design, Patterns of Enterprise Application Architecture]
Righting Software -> [Clean Architecture, Domain-Driven Design, Building Microservices]
Serverless as a Game Changer -> [Building Microservices, Continuous Delivery, Accelerate]
Software Architecture and Decision-Making -> [Clean Architecture, Effective Software Architecture, Continuous Architecture in Practice]
Software Architecture in Practice -> [Clean Architecture, Design Patterns, Patterns of Enterprise Application Architecture, Continuous Architecture in Practice]
Software Requirements Essentials -> [Writing Effective Use Cases, Specification by Example, BDD in Action]
Strategic Monoliths and Microservices -> [Domain-Driven Design, Implementing Domain-Driven Design, Domain-Driven Design Distilled, Building Microservices, Monolith to Microservices]
Understanding Software Dynamics -> [Accelerate, Continuous Delivery]
```

### Authors

```text
Martin Fowler -> [Kent Beck, Eric Evans, Robert C Martin, Gang of Four]
Kent Beck -> [Martin Fowler, Ward Cunningham, Gang of Four (Gamma), Robert C Martin, Dan North]
Robert C Martin -> [Barbara Liskov, Martin Fowler, Kent Beck, Michael Feathers, Dave Thomas and Andy Hunt]
Eric Evans -> [Martin Fowler, Vaughn Vernon, Dan North, Gojko Adzic, Sam Newman]
Michael Feathers -> [Robert C Martin, Kent Beck, Martin Fowler]
Dave Thomas and Andy Hunt -> [Kent Beck, Robert C Martin, Ward Cunningham, Martin Fowler]
Fred Brooks -> [Eric Evans, Edsger Dijkstra]
Grady Booch -> [Gang of Four, Martin Fowler]
Gang of Four -> [Grady Booch, Kent Beck, Ward Cunningham, Martin Fowler, Christopher Alexander]
Donald Knuth -> [Edsger Dijkstra]
Edsger Dijkstra -> [Donald Knuth, Fred Brooks, Robert C Martin]
Barbara Liskov -> [Robert C Martin, Gang of Four]
Ward Cunningham -> [Kent Beck, Gang of Four, Martin Fowler]
Alistair Cockburn -> [Kent Beck, Martin Fowler, Robert C Martin, Dan North]
Gene Kim -> [Jez Humble]
Sam Newman -> [Martin Fowler, Eric Evans]
Vaughn Vernon -> [Eric Evans, Tomasz Jaskula]
Jez Humble -> [Martin Fowler, Kent Beck, Gene Kim, David Farley]
David Farley -> [Jez Humble, Kent Beck]
Susanne Kaiser -> [Eric Evans, Vaughn Vernon]
Vlad Khononov -> [Eric Evans, Vaughn Vernon]
Stefan Hofer and Henning Schwentner -> [Eric Evans]
Sandi Metz -> [Kent Beck, Martin Fowler]
Len Bass Paul Clements and Rick Kazman -> [Eoin Woods]
Murat Erder Pierre Pureur and Eoin Woods -> [Len Bass Paul Clements and Rick Kazman]
Vaughn Vernon and Tomasz Jaskula -> [Eric Evans, Vaughn Vernon]
Christopher Alexander -> [Gang of Four, Kent Beck, Ward Cunningham]
Dan North -> [Kent Beck, Eric Evans, Gojko Adzic, John Smart, Alistair Cockburn]
John Smart -> [Dan North, Kent Beck, Eric Evans]
Gojko Adzic -> [Dan North, Eric Evans, Ward Cunningham]
```

---

## Lineage Chains

Intellectual ancestry — who built on whose ideas, and in what order.

```text
Christopher Alexander (patterns, 1977)
  -> Cunningham & Beck (SW patterns, CRC cards, late 1980s)
    -> Gang of Four (23 OO patterns, 1994)
      -> Fowler (enterprise patterns / PoEAA, 2002)
        -> Evans (domain patterns / DDD, 2003)
          -> Vernon (practical DDD / Red Book, 2013)
          -> Newman (Bounded Context -> microservices, 2015)

Beck (TDD, 2002)
  -> North (BDD, 2006)
    -> Adzic (Specification by Example, 2011)
    -> Smart (BDD in Action, 2014)

Beck (XP, 1999) + Fowler + Martin + Hunt + Cunningham + Cockburn
  -> Agile Manifesto (2001)
    -> Martin (Clean series, craftsmanship, 2008+)
    -> Cockburn (Crystal, Heart of Agile, 2015)
    -> Farley (Modern Software Engineering, 2022)

Evans (DDD, 2003)
  -> Vernon (IDDD, 2013; DDD Distilled, 2016)
    -> Vernon & Jaskula (Strategic Monoliths and Microservices, 2022)
  -> Khononov (Balancing Coupling, 2024)
  -> Hofer & Schwentner (Domain Storytelling, 2022)
  -> Kaiser (Architecture for Flow / DDD + Team Topologies + Wardley, 2026)

Dijkstra (structured programming, 1968)
  -> Brooks (essential vs accidental complexity, 1975/1986)
    -> Evans (domain = essential complexity, 2003)
    -> Feathers (legacy = unmanaged complexity, 2004)

Liskov (behavioral subtyping / LSP, 1987)
  -> Martin (SOLID principles, 2002)
    -> Martin (Clean Architecture / Dependency Rule, 2017)

Cunningham (technical debt metaphor, 1992)
  -> Fowler (refactoring as debt paydown, 1999)
    -> Beck (tidying as economic decision, 2023)

Humble & Farley (Continuous Delivery, 2010)
  -> Kim (Phoenix Project / Three Ways, 2013)
    -> Forsgren, Humble, Kim (Accelerate / DORA metrics, 2018)
  -> Farley (Modern Software Engineering, 2022)

Gang of Four (23 OO patterns, 1994)
  -> Metz (Practical OOD, 2012/2018)
  -> Zimmermann et al. (Patterns for API Design, 2023)
  -> Bass, Clements, Kazman (SA in Practice, 1998/2021)
```

---

## Clusters

Groups that share context and should be understood together.

### Agile Manifesto Signatories (in this vault)

Beck, Fowler, Martin, Hunt, Cunningham, Cockburn

### Book Series

- **Robert C. Martin Series**: Clean Code, The Clean Coder, Clean Architecture, Clean Agile, Functional Design, Working Effectively with Legacy Code, Agile SW Dev PPP
- **Martin Fowler Signature Series**: Continuous Delivery, Building Microservices
- **Vaughn Vernon Signature Series**: Implementing DDD, DDD Distilled, Domain Storytelling, Architecture for Flow, Balancing Coupling in Software Design, Patterns for API Design
- **Pragmatic Bookshelf**: The Pragmatic Programmer (+ published many others)
- **SEI Series**: Software Architecture in Practice

### The DDD Extended Universe

Domain-Driven Design (Evans) -> Implementing DDD (Vernon) -> DDD Distilled (Vernon) -> Strategic Monoliths and Microservices (Vernon & Jaskula) | Domain Storytelling (Hofer & Schwentner) | Balancing Coupling (Khononov) | Architecture for Flow (Kaiser)

### The API Design Pair

Patterns for API Design (Zimmermann et al., 2023) | Principles of Web API Design (Higginbotham, 2021)

### The Architecture Shelf

Software Architecture in Practice (Bass et al.) | Clean Architecture (Martin) | Continuous Architecture in Practice (Erder et al.) | Effective Software Architecture (Goldman) | Righting Software (Löwy) | Software Architecture and Decision-Making (Perera)

### The "Clean" Family (Martin)

Clean Code (2008) -> The Clean Coder (2011) -> Clean Architecture (2017) -> Clean Agile (2019) -> Functional Design (2023)

### The DDD Trilogy (core)

Domain-Driven Design (Evans, 2003) -> Implementing DDD (Vernon, 2013) -> DDD Distilled (Vernon, 2016) -> Strategic Monoliths and Microservices (Vernon & Jaskula, 2022)

### The DevOps Trilogy

Continuous Delivery (Humble, 2010) -> The Phoenix Project (Kim, 2013) -> Accelerate (Forsgren/Humble/Kim, 2018)

### The BDD Lineage (user's original reading list)

Introducing BDD (North, 2006) -> Specification by Example (Adzic, 2011) -> BDD in Action (Smart, 2014)

### Beck's Arc

Smalltalk Best Practice Patterns (1996) -> XP Explained (1999) -> TDD by Example (2002) -> Implementation Patterns (2007) -> Tidy First? (2023)

### The Foundations (pre-1980)

A Pattern Language (Alexander, 1977) | The Mythical Man-Month (Brooks, 1975) | A Discipline of Programming (Dijkstra, 1976) | TAOCP (Knuth, 1968+)
