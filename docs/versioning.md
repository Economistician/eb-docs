# Versioning & Compatibility Policy

This document defines how versioning, compatibility, and releases are managed across the **Electric Barometer** ecosystem.

Electric Barometer is composed of multiple repositories (papers, documentation, and implementation packages). These components evolve independently, but are governed by a shared compatibility policy so users can upgrade predictably.

---

## Scope

This policy applies to:

- **Umbrella distribution:** `electric-barometer`
- **Implementation packages:** `eb-metrics`, `eb-evaluation`, `eb-features`, `eb-adapters`
- **Research and documentation repositories:** `eb-papers`, `eb-docs`

---

## Versioning Standard

All implementation packages follow **Semantic Versioning (SemVer)**:

```
MAJOR.MINOR.PATCH
```

- **PATCH**: bug fixes, performance improvements, documentation/metadata changes
- **MINOR**: backwards-compatible new features (additive changes)
- **MAJOR**: backwards-incompatible changes (breaking changes)

During `0.x` development, Electric Barometer treats **MINOR bumps as the primary compatibility boundary**.

---

## What Counts as a Breaking Change

A change is considered **breaking** if upgrading could cause failures, behavioral changes, or incompatible outputs for an existing user who does not modify their code or pipelines.

Examples of **breaking** changes:

- Removing or renaming a public function/class
- Changing a public function signature in a non-additive way
- Changing default behavior that affects metric values or evaluation outcomes
- Renaming output columns or changing returned schemas
- Changing adapter interface contracts
- Increasing `requires-python`
- Tightening dependency requirements

Examples of **non-breaking** changes:

- Adding new metrics, diagnostics, or adapters
- Adding optional parameters with safe defaults
- Documentation, tests, or examples
- Bug fixes that restore intended behavior

---

## Compatibility Bands

Electric Barometer uses **compatibility bands** to coordinate multiple packages without lockstep releases.

- A band is defined by the **MINOR version line** during `0.x` (e.g. `0.2.x`)
- Within a band, packages must remain compatible

Example:

- `eb-evaluation 0.2.3` must remain compatible with `eb-metrics 0.2.x`

---

## Umbrella Package Policy (`electric-barometer`)

The umbrella distribution is a **meta-installer** that provides a blessed set of compatible packages.

Typical dependency ranges:

- `eb-metrics >=0.2,<0.3`
- `eb-evaluation >=0.2,<0.3`
- `eb-features >=0.2,<0.3`
- `eb-adapters >=0.2,<0.3`

The umbrella is released when a new ecosystem band is introduced or when cross-package coordination is required.

---

## Tagging and Releases

Implementation repositories should tag releases as:

```
vMAJOR.MINOR.PATCH
```

Tags must correspond to the code used to publish that version to PyPI.

---

## The v1.0 Stability Moment

Electric Barometer will declare **v1.0** when:

- Core public APIs are explicitly defined and documented
- Output schemas are stable
- Adapter contracts are stable
- Backwards compatibility is guaranteed within `1.x`
- A compatibility matrix exists

---
