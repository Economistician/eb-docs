# Evaluation → Selection

This workflow defines how evaluated forecasts are **compared and selected** without collapsing
evaluation into optimization or model training.

In Electric Barometer, evaluation produces **diagnostic evidence**, not decisions. Selection is a
separate, explicit step that transforms evaluated candidates into a **chosen forecast** under
declared readiness objectives and tie-breaking rules.

---

## Objective

The objective of the Evaluation → Selection workflow is to select **one forecast candidate per
evaluation context** using readiness-oriented criteria, while preserving:

- interpretive validity (units and primitives already governed),
- separation of diagnostics from decisions,
- and auditability of why a candidate was chosen.

Selection does not modify forecasts, apply control, or encode policy.

---

## Inputs

This workflow consumes:

### 1. Evaluated forecast candidates

For each candidate forecast:
- readiness diagnostics (e.g., NSL, CWSL, FRS, UD, HR@τ),
- diagnostic metadata (evaluation window, resolution, unit semantics),
- and any admissibility flags produced upstream.

All diagnostics are assumed to be computed under **authoritative interpretation semantics**.

### 2. Selection criteria

Explicit, declared rules defining how candidates are compared, such as:
- primary readiness objective(s),
- secondary criteria for trade-offs,
- and deterministic tie-breakers.

Selection criteria are **policy declarations**, not learned or inferred preferences.

### 3. Governance constraints (informational)

Outputs from structural diagnostics (e.g., DQC, FPC) that constrain admissible selection behavior.

Selection may not override or reinterpret these constraints.

---

## Workflow steps

### Step 1: Filter inadmissible candidates

Candidates that are structurally inadmissible are removed prior to comparison.

Examples include:
- forecasts failing primitive compatibility requirements,
- candidates evaluated under non-authoritative unit systems,
- or outputs flagged as incompatible by governance diagnostics.

Inadmissible candidates are **excluded**, not penalized.

---

### Step 2: Define the selection objective

Selection objectives must be explicit and stable.

Common objectives include:
- maximizing Forecast Readiness Score (FRS),
- minimizing Cost-Weighted Service Loss (CWSL) subject to coverage constraints,
- or prioritizing reliability (NSL) with bounded cost exposure.

Only declared diagnostics may be used.

---

### Step 3: Compare candidates under the objective

Candidates are compared using the declared objective and secondary criteria.

Key properties:
- no reweighting of diagnostics,
- no aggregation across incompatible contexts,
- no smoothing or interpolation across candidates.

Comparison is deterministic.

---

### Step 4: Resolve ties and ambiguities

When multiple candidates satisfy the primary objective equivalently, declared tie-breaking rules are
applied (e.g., lower variance, simpler primitive, lower surplus exposure).

Ad hoc judgment is explicitly out of scope.

---

## Outputs

This workflow produces:

### 1. Selected forecast

A single forecast candidate designated as the selection outcome for the evaluation context.

The selected forecast remains **unmodified**.

### 2. Selection rationale

A minimal, structured record containing:
- the objective used,
- the diagnostics evaluated,
- the reason the selected candidate dominated alternatives,
- and any tie-breaking applied.

This rationale is required for audit and reproducibility.

---

## Scope and non-goals

This workflow does **not**:

- retrain or adjust models,
- apply readiness adjustment,
- encode operational policy,
- or reinterpret diagnostic semantics.

Selection chooses among evaluated options; it does not alter them.

---

## Governance notes

Selection is **subordinate to governance**.

If governance diagnostics declare a forecast primitive incompatible or a representation inadmissible,
selection must respect that constraint.

Selection cannot legitimize structurally invalid behavior through performance.

---

## Transition to policy

After selection, the system has answered:

> *Which forecast should we consider under readiness evaluation?*

The next question is:

> *What are we allowed to do with it?*

That question is addressed in **[Selection → Policy](selection-to-policy.md)**.
