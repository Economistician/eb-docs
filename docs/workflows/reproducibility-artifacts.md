# Reproducibility Artifacts

This page defines the **minimal, authoritative artifact set** required to reproduce any
evaluation, selection, or policy decision produced under the Electric Barometer framework.

Reproducibility in Electric Barometer is not aspirational. It is a **hard requirement** enforced
through explicit artifacts, fixed assumptions, and deterministic workflows.

---

## Why reproducibility is treated as an artifact

Operational readiness decisions often outlive:
- the people who made them,
- the models that generated forecasts,
- and the systems that executed them.

As a result, Electric Barometer treats reproducibility not as a logging concern, but as a
**deliberate output** of every workflow stage. If a result cannot be reproduced exactly from
declared artifacts, it is considered incomplete.

---

## Reproducibility principle

A result is reproducible if—and only if—the following question can be answered unambiguously:

> *Given the same declared inputs, parameters, and versions, would this workflow produce the
same diagnostics, selections, and policy decisions?*

If the answer is “not guaranteed,” required artifacts are missing.

---

## Required artifact categories

Reproducibility requires artifacts from **each stage of the workflow pipeline**.

### 1. Evaluation context artifact

Defines *what was evaluated*.

Must include:
- entity definitions and identifiers,
- evaluation resolution and horizon,
- aggregation semantics,
- inclusion / exclusion rules,
- and the evaluation window.

This artifact establishes the coordinate system for all downstream reasoning.

---

### 2. Input data snapshot

Defines *what was observed*.

Must include:
- realized demand values aligned to the evaluation frame,
- explicit representation of missing or zero-demand intervals,
- and a versioned reference to the data source.

Downstream artifacts may reference this snapshot but may not alter it.

---

### 3. Forecast candidate manifest

Defines *what was evaluated*.

Must include:
- an explicit enumeration of forecast candidates,
- identifiers or hashes sufficient to retrieve each forecast,
- confirmation of structural alignment to the evaluation frame.

Forecasts not listed in this manifest are considered out of scope.

---

### 4. Evaluation parameter declaration

Defines *how behavior was interpreted*.

Must include:
- asymmetric cost ratios,
- tolerance values or grids,
- snapping or representation requirements,
- and any fixed thresholds used during evaluation.

All parameters are treated as governed assumptions.

---

### 5. Diagnostic output bundle

Defines *what was observed diagnostically*.

Must include:
- readiness diagnostics for each forecast candidate,
- evaluated under authoritative unit semantics,
- with references to diagnostic definitions and versions.

Diagnostics without parameter and unit context are invalid.

---

### 6. Selection rationale (if applicable)

Defines *why a forecast was chosen*.

Must include:
- the selection objective,
- any secondary criteria or tie-breakers,
- and the dominance logic applied.

This artifact explains selection without requiring re-evaluation.

---

### 7. Governance decision artifact (if applicable)

Defines *what actions are allowed*.

Must include:
- the authoritative governance decision,
- declared unit system and tolerance semantics,
- readiness adjustment allowability,
- and explicit reasoning statements.

This artifact is binding and terminates interpretation.

---

## Determinism and versioning

All reproducibility artifacts must satisfy:

- **Determinism**  
  Identical artifacts must produce identical outcomes.

- **Explicit versioning**  
  Diagnostic definitions, thresholds, and policies must be versioned or hashable.

- **No hidden state**  
  No workflow may rely on implicit defaults, learned state, or external context.

---

## What is intentionally excluded

Reproducibility artifacts do **not** require:
- model training code,
- feature definitions,
- hyperparameters,
- or optimization internals.

Electric Barometer reproduces **decisions**, not model training processes.

---

## Governance notes

Reproducibility is enforced by governance.

If required artifacts are missing, incomplete, or inconsistent:
- evaluation results are non-authoritative,
- selection outcomes are invalid,
- and policy decisions must fail explicitly.

Silent degradation is not permitted.

---

## Summary

Reproducibility artifacts ensure that Electric Barometer workflows are:
- reviewable,
- auditable,
- transferable across teams and systems,
- and defensible over time.

They are not optional documentation—they are part of the system’s output.
