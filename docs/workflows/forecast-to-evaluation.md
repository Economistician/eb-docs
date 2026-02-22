# Forecast → Evaluation

This workflow defines how forecasts are **evaluated diagnostically** under the Forecast
Readiness Framework.

In Electric Barometer, evaluation is not a scoring exercise and not a proxy for decision-making.
Its purpose is to **characterize readiness behavior under governed interpretation semantics**
without prescribing action.

---

## Objective

The objective of the Forecast → Evaluation workflow is to compute **structurally valid readiness
diagnostics** for each forecast candidate, given realized demand, while enforcing:

- admissible unit interpretation,
- separation of diagnostics from decisions,
- and auditability of assumptions.

Evaluation answers the question:

> *How does this forecast behave under readiness-relevant criteria, assuming declared costs,
tolerances, and units?*

It does not answer whether the forecast should be selected or deployed.

---

## Inputs

This workflow consumes:

### 1. Forecast-ready evaluation panel

The panel produced by **[Data → Forecast](data-to-forecast.md)**, containing:
- realized demand,
- aligned forecast candidates,
- entity and time indices,
- and evaluation metadata.

This panel is treated as fixed for the duration of evaluation.

### 2. Evaluation parameters

Explicitly declared parameters governing interpretation, including:
- asymmetric cost ratios,
- tolerance values or grids,
- evaluation windows and aggregation rules.

These parameters are treated as **governed assumptions**, not tuning knobs.

### 3. Structural diagnostics (upstream)

Diagnostics that constrain how evaluation is interpreted, including:
- Demand Quantization Compatibility (DQC),
- and any declared snapping or representation requirements.

Evaluation must respect these constraints.

---

## Workflow steps

### Step 1: Resolve admissible representation

Before computing metrics, evaluation resolves **how values are to be interpreted**.

Based on upstream diagnostics:
- demand may be treated as continuous-like, or
- interpreted on a discrete grid with snapping enforced.

This step establishes the **authoritative unit system** for all downstream diagnostics.

---

### Step 2: Compute primitive diagnostics

Evaluation computes readiness-oriented diagnostics for each forecast candidate, such as:
- coverage and shortfall indicators,
- asymmetric cost metrics,
- tolerance-based hit rates,
- conditional severity diagnostics.

These metrics are **descriptive**, not prescriptive. They summarize behavior under declared
assumptions.

---

### Step 3: Diagnose responsiveness and structure

Where applicable, diagnostics are evaluated across:
- tolerance ranges,
- cost asymmetry sweeps,
- or bounded adjustment envelopes.

The purpose is to **observe responsiveness**, not to optimize outcomes.

These observations support later compatibility and governance decisions.

---

### Step 4: Record evaluation context

All diagnostics are recorded together with:
- the governing unit system,
- evaluation parameters,
- and the evaluation frame.

Diagnostics without context are considered invalid.

---

## Outputs

This workflow produces:

### 1. Evaluated forecast diagnostics

For each forecast candidate:
- a complete set of readiness diagnostics,
- computed under authoritative interpretation semantics,
- indexed to the evaluation context.

These diagnostics are immutable once produced.

### 2. Evaluation metadata

A structured record of:
- assumptions,
- thresholds,
- unit conventions,
- and diagnostic versions.

This metadata is required for audit and reproducibility.

---

## Scope and non-goals

This workflow explicitly does **not**:

- select a forecast,
- apply readiness adjustment,
- encode operational policy,
- or collapse diagnostics into a single decision score.

Evaluation characterizes behavior; it does not decide.

---

## Governance notes

Evaluation is constrained by governance but does not issue governance decisions.

If evaluation reveals structural incompatibility or invalid interpretation, that information is
passed forward. It is **not resolved here**.

No evaluation result is authoritative without declared unit semantics and parameters.

---

## Transition to selection

Once evaluation completes, the system can answer:

> *Given governed assumptions, how do these forecasts behave relative to readiness objectives?*

Choosing among them is a separate step, addressed in
**[Evaluation → Selection](evaluation-to-selection.md)**.
