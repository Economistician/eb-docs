# Ecosystem Map

The Electric Barometer ecosystem is composed of a set of focused repositories, each responsible for a specific layer of the forecasting, evaluation, and decisioning lifecycle. These components are designed to work together through shared concepts and contracts, while remaining independently versioned and governed.

This page provides a high-level map of the ecosystem and explains how the pieces fit together.

---

## Design philosophy

The Electric Barometer ecosystem follows a small number of design principles:

- **Separation of concerns** — forecasting, evaluation, policy, and decisioning are distinct layers
- **Explicit contracts** — assumptions and interfaces are made visible
- **Independent evolution** — repositories are versioned and released independently
- **Centralized concepts, distributed implementation** — core ideas live in this documentation; implementation details live in their respective repositories

The goal is clarity, not consolidation.

---

## Ecosystem at a glance

At a high level, the ecosystem spans five functional layers:

1. **Concepts and Documentation**  
   Define the mental model, vocabulary, and system structure.

2. **Features and Adapters**  
   Prepare inputs and connect external systems.

3. **Metrics and Evaluation**  
   Measure forecasting system behavior under explicit assumptions.

4. **Optimization and Policy**  
   Resolve tradeoffs and translate evaluation into decisions.

5. **Research and Formalization**  
   Provide mathematical and theoretical grounding.

Each layer is represented by one or more repositories.

---

## Core documentation

### eb-docs

This repository serves as the **central documentation hub** for the ecosystem.

It contains:

- Conceptual foundations
- Guides and workflows
- Ecosystem-level references
- Navigation and integration across repositories

It does not duplicate code-level documentation. Instead, it routes readers to the appropriate source of truth.

---

## Features and data preparation

### eb-features

The features repository defines reusable feature transforms used by forecasting systems.

Responsibilities include:

- Feature transform definitions
- Input/output contracts
- Validation logic
- Feature-level documentation

Feature transforms are treated as governed, reusable components rather than ad hoc preprocessing steps.

See **[Add a Feature Transform](../guides/add-a-feature-transform/)** for contribution guidance.

---

## Adapters and integration

### eb-adapters

The adapters repository contains integration layers that connect Electric Barometer to external systems and environments.

Adapters handle:

- Data ingestion and extraction
- Schema translation
- Environment-specific I/O
- External service integration

Adapters isolate operational concerns from evaluation and decision logic.

See **[Add an Adapter](../guides/add-an-adapter/)** for details.

---

## Metrics and evaluation

### eb-metrics

The metrics repository defines evaluation measures used to assess forecasting system behavior.

It includes:

- Cost-aware and decision-facing metrics
- Parameterized metric definitions
- Validation and interpretation guidance

Metrics measure behavior; they do not make decisions.

The flagship metric in this repository is **Cost-Weighted Service Loss (CWSL)**. See **[Metrics](../metrics/)** for an overview.

---

## Optimization and policy

### eb-optimization

The optimization repository contains logic and frameworks for translating evaluation outputs into governed decisions.

It covers:

- Cost ratio configuration
- Policy definition and tuning
- Tie-breaking and selection logic
- Readiness-aware optimization

Optimization operates above metrics and models, encoding preference and intent explicitly.

See **[Optimization](../optimization/)** to understand this layer.

---

## Forecasting and execution

### eb-integration

The integration repository coordinates end-to-end execution across features, forecasting systems, evaluation, and optimization.

It provides:

- Workflow orchestration
- System assembly
- Execution configuration
- End-to-end validation

This repository ties the ecosystem together without redefining core logic.

---

## Research and formal foundations

### eb-papers

The papers repository contains formal technical notes and research papers that define the mathematical and theoretical foundations of the ecosystem.

It includes:

- Formal metric definitions
- Theoretical frameworks
- Extended analysis and proofs

These artifacts serve as stable, citable references.

---

## How the pieces fit together

A typical lifecycle flows as follows:

1. Feature transforms prepare inputs  
2. Adapters connect data and execution environments  
3. Forecasting systems generate predictions  
4. Metrics evaluate system behavior  
5. Optimization applies policy and readiness  
6. Decisions are selected and governed  
7. Releases preserve reproducibility  

Each step corresponds to one or more repositories, coordinated through shared concepts rather than tight coupling.

---

## Navigating the ecosystem

If you are:

- **New to Electric Barometer** — start with **[Concepts](../concepts/)**  
- **Running evaluations** — see **[Guides](../guides/)**  
- **Working with metrics** — explore **[Metrics](../metrics/)**  
- **Defining policies** — review **[Optimization](../optimization/)**  
- **Looking for formal definitions** — consult **[Papers](../papers/)**  

This documentation site provides the map; each repository provides the detail.

---

## Where to go next

- Continue with **[Start Here](index/)** for onboarding
- Read **[Concepts](../concepts/)** to understand system philosophy
- Explore **[Guides](../guides/)** for hands-on workflows

The Electric Barometer ecosystem is designed to scale in complexity without losing clarity. This map is your guide to how the pieces work together.
