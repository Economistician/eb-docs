# Electric Barometer · Docs (`eb-docs`)

![License: BSD-3-Clause](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)
[![Documentation](https://img.shields.io/badge/docs-live-blue)](https://economistician.github.io/eb-docs/)

Central documentation hub for the Electric Barometer ecosystem, including concepts, guides, and package references.

---

## Overview

This repository contains the **official documentation site** for the Electric Barometer ecosystem. It serves as a single, coherent entry point for understanding the system’s concepts, architecture, and usage across research and implementation layers.

The documentation is designed to bridge theory and practice. It explains how the Forecast Readiness Framework (FRF) and related concepts translate into executable metrics, evaluation workflows, and applied tooling, while keeping formal mathematical definitions and papers housed separately in `eb-papers`.

The site includes:
- **Conceptual documentation** explaining core ideas, terminology, and design principles
- **Ecosystem overviews** describing how Electric Barometer repositories fit together
- **Package documentation** for implementation repositories such as `eb-metrics`, `eb-evaluation`, `eb-features`, and `eb-adapters`
- **Guides and usage notes** for applying the framework in practical forecasting and evaluation workflows

This repository intentionally contains no production code. Its role is to provide clear, navigable, and continuously updated documentation that supports both readers new to Electric Barometer and practitioners working directly with its implementations.

---

## Role in the Electric Barometer Ecosystem

This repository functions as the documentation and navigation layer of the Electric Barometer ecosystem. It connects the theoretical foundations defined in research papers with their practical implementations in code, providing a coherent view of the system as a whole.

Specifically, `eb-docs`:
- Presents **conceptual explanations** of the Forecast Readiness Framework (FRF) and related ideas without duplicating formal theory
- Documents how research concepts are **implemented and exposed** in companion repositories
- Serves as the primary **onboarding and reference point** for users interacting with Electric Barometer tooling
- Provides a stable, user-facing interface while underlying implementations evolve

Formal definitions, proofs, and methodological rationale live in `eb-papers`. Executable metrics, evaluation logic, and integration layers live in implementation repositories such as `eb-metrics`, `eb-evaluation`, `eb-features`, and `eb-adapters`.

By separating documentation from both theory and code, the Electric Barometer ecosystem remains modular, maintainable, and approachable to a broad audience, from researchers to practitioners.

---

## Documentation Structure

The documentation in this repository is organized to mirror the structure and navigation of the published Electric Barometer documentation site. Content is grouped by purpose rather than by repository or implementation detail.

At a high level, the documentation is divided into:

- **Concepts**  
  High-level explanations of core ideas, terminology, and design principles underlying the Electric Barometer ecosystem. These pages focus on *what* the system is and *why* it is structured the way it is, without requiring familiarity with the underlying code.

- **Ecosystem Overview**  
  Descriptions of how the Electric Barometer repositories fit together, including the relationship between research papers, documentation, and implementation packages.

- **Package Documentation**  
  Reference material for individual implementation repositories (such as `eb-metrics`, `eb-evaluation`, `eb-features`, and `eb-adapters`). These sections explain package responsibilities, exposed interfaces, and expected usage patterns, without duplicating source-level API documentation.

- **Guides and Usage Notes**  
  Practical, task-oriented guidance for applying Electric Barometer concepts and tooling in real workflows. These guides emphasize how components are combined and used, rather than step-by-step installation instructions.

The structure is intentionally stable and extensible. New concepts, packages, and guides can be added without restructuring the site, ensuring that the documentation evolves alongside the ecosystem while remaining easy to navigate.

---

## Relationship to Papers and Code

This repository sits between the research and implementation layers of the Electric Barometer ecosystem.

Formal theory, definitions, and methodological rationale are developed in the **`eb-papers`** repository, where the Forecast Readiness Framework (FRF) and its component metrics are specified as citable research artifacts. Executable implementations of those concepts live in code-focused repositories such as **`eb-metrics`**, **`eb-evaluation`**, **`eb-features`**, and **`eb-adapters`**.

`eb-docs` does not introduce new theory or provide production code. Instead, it explains how concepts defined in the research layer are realized in practice, and how implementation components are intended to be used together. This separation allows research, documentation, and code to evolve independently while remaining conceptually aligned.

Readers looking for formal definitions or citations should consult the relevant paper. Readers looking to apply Electric Barometer concepts in software should consult the implementation repositories referenced throughout the documentation.

---

## Building and Publishing Docs

The Electric Barometer documentation site is built using **MkDocs** with the Material theme and is published automatically via GitHub Pages.

Documentation content lives in the `docs/` directory and is written in Markdown. The site structure and navigation are defined in `mkdocs.yml`, which mirrors the conceptual organization of the ecosystem.

Build and deployment are handled by a GitHub Actions workflow that:
- Builds the static documentation site on each update
- Publishes the generated site to GitHub Pages
- Ensures the public documentation stays synchronized with the contents of this repository

This repository is the source of truth for the published documentation. Changes merged to the main branch are reflected in the live site through the automated build and deploy process.

---

## License

BSD 3-Clause License.  
© 2025 Kyle Corrie.