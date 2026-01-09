# Workflows

This section describes how Electric Barometer is used in practice.

Electric Barometer is not organized around “train a model → score a model.” It is organized around **repeatable decision workflows** in which evaluation is structurally valid, assumptions are governed, and outputs are deployable as explicit policy artifacts.

---

## What a workflow is in Electric Barometer

A workflow is a **deterministic pipeline** that begins with inputs (data, forecasts, candidate configurations) and ends with an auditable outcome (metrics, selections, policy decisions, and reproducibility artifacts).

Workflows are intentionally designed to enforce:

- **Separation of concerns** (diagnostics diagnose, governance decides, downstream systems execute)
- **Structural validity** (units and primitives must be admissible before interpretation)
- **Decision closure** (no “interpretation drift” after a decision artifact is issued)
- **Reproducibility** (results are traceable to fixed inputs, thresholds, and versions)

---

## Workflow map

The workflows in this section are ordered as a complete pipeline:

- **[Data → Forecast](data-to-forecast.md)**  
  Define evaluation entities, windows, and admissible unit conventions; produce forecast-ready panels and candidate forecast sets.

- **[Forecast → Evaluation](forecast-to-evaluation.md)**  
  Compute readiness diagnostics (e.g., coverage, asymmetric loss, tolerance behavior) under governed interpretation semantics.

- **[Evaluation → Selection](evaluation-to-selection.md)**  
  Select among candidate forecasts using readiness-oriented objectives and tie-breaking rules, without collapsing evaluation into model training.

- **[Selection → Policy](selection-to-policy.md)**  
  Convert evaluated outcomes into explicit, bounded policies suitable for deployment (including readiness adjustment allowability and policy structure).

- **[Reproducibility Artifacts](reproducibility-artifacts.md)**  
  Record the minimal artifact set required to reproduce an evaluation, a selection, and a policy decision exactly.

---

## Scope and non-goals

These workflow docs are intentionally narrow. They describe **how Electric Barometer is executed**, not how to build forecasting models.

In particular, this section does **not** attempt to:

- prescribe modeling methods or feature engineering strategies,
- optimize models directly against readiness metrics,
- replace domain judgment or operational constraints,
- define organizational processes (approvals, ownership, operating cadences).

Instead, the goal is to document the **mechanics of an auditable readiness pipeline**.

---

## Intended audience

These workflows are written for:

- **operators / decision owners** who need defensible readiness behavior,
- **analysts and applied scientists** evaluating candidate systems under asymmetric risk,
- **platform and data engineers** implementing repeatable evaluation and governance pipelines.

If you are new to the framework, start with **[Concepts](../concepts/)** first, then return here to see how those ideas are operationalized.

---

## Conventions

Across all workflow pages:

- “Evaluation” refers to computing diagnostics under declared assumptions.  
- “Selection” refers to choosing among candidates using those diagnostics.  
- “Policy” refers to explicit, bounded, versioned rules suitable for downstream execution.  
- Any parameter that changes interpretation (e.g., tolerance, asymmetry, snapping semantics) is treated as a **governed artifact**, not an ad hoc knob.

This section aims to make the pipeline **obvious, repeatable, and reviewable**.
