# Selection → Policy

This workflow defines how a selected forecast is transformed into an **authoritative policy
decision** suitable for downstream execution.

In Electric Barometer, selection identifies *which forecast to consider*. Policy determines
*what actions are allowed*. These are not the same step, and they are never collapsed.

---

## Objective

The objective of the Selection → Policy workflow is to issue a **binding governance outcome**
that declares:

- admissible interpretation semantics,
- readiness adjustment allowability,
- and execution constraints,

given a selected forecast and its evaluated diagnostics.

This workflow **terminates interpretation**. Once complete, no further diagnostic reasoning
is admissible downstream.

---

## Inputs

This workflow consumes:

### 1. Selected forecast

The output of **[Evaluation → Selection](evaluation-to-selection.md)**.

The selected forecast is treated as fixed and unmodified.

### 2. Evaluation diagnostics

The full diagnostic bundle associated with the selected forecast, including:
- readiness metrics,
- responsiveness observations,
- and structural diagnostic outputs.

All diagnostics are assumed to be evaluated under authoritative unit semantics.

### 3. Structural compatibility diagnostics

Governance-relevant diagnostics, including:
- Demand Quantization Compatibility (DQC),
- Forecast Primitive Compatibility (FPC).

These diagnostics constrain policy allowability.

### 4. Governance parameters

Explicit thresholds and policy rules governing:
- tolerance interpretation,
- readiness adjustment constraints,
- and admissibility rules.

These parameters are declared inputs, not tunable preferences.

---

## Workflow steps

### Step 1: Resolve authoritative representation

Governance declares the **single admissible representation** under which policy is evaluated.

Based on DQC:
- raw-unit interpretation may be permitted, or
- grid-aligned snapping may be mandatory.

This declaration is exclusive. Mixed representations are not allowed.

---

### Step 2: Assess readiness adjustment allowability

Using authoritative representation semantics, governance evaluates Forecast Primitive
Compatibility (FPC) to determine whether readiness adjustment is:

- Allowed,
- Conditionally allowed (under explicit constraints),
- or Disallowed.

This determination is structural, not performance-based.

---

### Step 3: Declare policy outcome

Governance encodes the outcome as an explicit policy declaration, including:
- interpretation semantics,
- snapping requirements (if any),
- readiness adjustment allowability,
- and any binding constraints.

No optimization or negotiation occurs at this stage.

---

### Step 4: Issue governance decision artifact

The workflow emits a single **Governance Decision** artifact containing:
- the governing unit system,
- tolerance interpretation rules,
- readiness policy status,
- and explicit reasoning statements.

This artifact is authoritative and binding.

---

## Outputs

This workflow produces:

### 1. Governance decision artifact

The terminal output of the workflow pipeline.

Downstream systems must consume this artifact directly and may not reinterpret or override it.

### 2. Policy metadata

A structured record linking the policy decision to:
- the evaluation context,
- the selected forecast,
- and the diagnostics used.

This metadata supports audit and reproducibility.

---

## Scope and non-goals

This workflow does **not**:

- adjust forecasts,
- select among alternative policies,
- optimize operational outcomes,
- or override upstream diagnostics.

Policy declares admissibility; execution determines outcomes.

---

## Governance notes

Governance enforces **decision closure**.

If required diagnostics are missing, inconsistent, or inadmissible:
- no policy is issued,
- the workflow fails explicitly,
- and downstream execution is prohibited.

Graceful degradation is intentionally disallowed.

---

## Summary

The Selection → Policy workflow ensures that:

- readiness decisions are structurally valid,
- assumptions are explicit and enforceable,
- and execution systems receive unambiguous guidance.

It is the boundary where evaluation ends and responsibility begins.
