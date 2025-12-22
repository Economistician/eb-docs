# Electric Barometer Documentation (`eb-docs`)

![License: BSD-3-Clause](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)
![Project Status](https://img.shields.io/badge/Status-Alpha-yellow)

This repository contains the official documentation site for the
Electric Barometer ecosystem.

eb-docs serves as the central entry point for understanding the Electric
Barometer framework, including its conceptual foundations, package relationships,
and usage guidance across the broader EB codebase.

This repository does not contain executable implementations. Instead, it
organizes and presents material drawn from the companion repositories:

- eb-metrics
- eb-evaluation
- eb-adapters
- eb-papers

---

## Purpose

Electric Barometer is a research-driven framework for evaluating and selecting
forecasting systems under asymmetric, operationally meaningful cost structures.

Because the framework spans multiple packages and conceptual layers, eb-docs
exists to:

- Provide a coherent narrative across repositories
- Explain how EB components fit together
- Guide users toward the appropriate package for their use case
- Host rendered API documentation and conceptual overviews

In short, eb-docs is the front door to the Electric Barometer ecosystem.

---

## What This Repository Provides

- High-level framework overview and motivation
- Getting-started guidance for new users
- Ecosystem and package relationship documentation
- Links to rendered API documentation for EB packages
- Documentation builds powered by MkDocs + Material

All technical API details are generated automatically from NumPy-style docstrings
in the source repositories.

---

## Documentation Workflow

Documentation is authored **within each package repository** and aggregated into
a unified site via Git submodules and an automated synchronization step.

The aggregation process is intentionally explicit and reproducible:
- Each EB package maintains its own `docs/` directory
- The `eb-docs` repository includes those packages as Git submodules
- A sync script copies package documentation into a unified navigation tree

For implementation details, see:

```
scripts/sync-packages-docs.ps1
```

This design ensures documentation remains:
- Owned by the package it describes
- Version-aligned with source code
- Reproducible from repository state

---

## Scope

This repository focuses on documentation, synthesis, and navigation.

**In scope:**
- Conceptual overviews of the Electric Barometer framework
- Cross-package documentation and relationships
- Getting-started and orientation materials
- Rendered API documentation links

**Out of scope:**
- Metric implementations
- Evaluation logic
- Model adapters
- Theoretical derivations and proofs

Those responsibilities live in the companion EB repositories.

---

## Relationship to Other EB Repositories

- **eb-papers**  
  Source of truth for theoretical motivation, formal definitions, and research context.

- **eb-metrics**  
  Implements cost-aware loss functions and service-level diagnostics.

- **eb-evaluation**  
  Orchestrates model evaluation, comparison, and selection workflows.

- **eb-adapters**  
  Normalizes external forecasting models to a consistent interface.

When discrepancies arise, conceptual intent in `eb-papers` should be treated as authoritative.

---

## Status

This documentation site is under active development.
Content and structure may evolve alongside the Electric Barometer framework.