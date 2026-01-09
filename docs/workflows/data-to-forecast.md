# Data → Forecast

This workflow defines the boundary between **raw data** and **forecast candidates** that are admissible for readiness evaluation.

Electric Barometer does not assume that any forecast can be evaluated safely. Before diagnostics, selection, or policy are applied, inputs must be structured such that **units, resolution, entities, and horizons are explicit and stable**. This workflow establishes those prerequisites.

---

## Objective

The objective of the Data → Forecast workflow is to produce a **forecast-ready evaluation panel** and a **set of candidate forecasts** that:

- share a common evaluation resolution and horizon,
- are aligned to declared entities and aggregation semantics,
- admit governed interpretation downstream,
- and are reproducible from declared inputs.

This workflow terminates at *forecast generation*. It does not evaluate, score, or select forecasts.

---

## Inputs

This workflow consumes the following categories of inputs:

### 1. Realized demand data

Observed demand values indexed by:
- entity (e.g., item, location, workload stream),
- time (at the evaluation resolution),
- and any declared hierarchy levels.

Demand data is treated as **authoritative and immutable** within the evaluation window. No smoothing, imputation, or transformation decisions are implied by this workflow.

### 2. Evaluation configuration

Explicit declarations of:
- evaluation resolution (e.g., 30-minute, hourly, daily),
- evaluation window and horizon,
- entity granularity (single entity vs panel),
- inclusion / exclusion rules (e.g., closed periods, out-of-scope entities).

These declarations define *what will be evaluated*, not *how performance will be judged*.

### 3. Forecast generation mechanisms

One or more forecasting systems capable of producing baseline forecasts aligned to the declared configuration.

Electric Barometer imposes **no constraints** on:
- model class,
- training methodology,
- feature engineering,
- or learning paradigm.

Forecasts are treated as opaque outputs at this stage.

---

## Workflow steps

### Step 1: Declare the evaluation frame

The evaluation frame defines the coordinate system in which all downstream reasoning occurs.

At minimum, this includes:
- time resolution,
- evaluation horizon,
- entity identifiers,
- and aggregation semantics.

Once declared, this frame must remain fixed for the duration of the workflow. Any change to the frame constitutes a new evaluation context.

---

### Step 2: Assemble the realized demand panel

Realized demand is aligned to the evaluation frame without interpretation.

Key requirements:
- all values are indexed consistently,
- missing observations are represented explicitly,
- no assumptions are made about continuity, smoothness, or distribution.

Structural properties of demand (e.g., discreteness, intermittency) are **not inferred here**. They are diagnosed later.

---

### Step 3: Generate candidate forecasts

Each forecasting system produces a baseline forecast aligned to the evaluation frame.

At this stage:
- forecasts are not adjusted,
- no readiness intervention is applied,
- no cost or tolerance assumptions are introduced.

Each forecast is treated as a *candidate*, not as a decision.

---

### Step 4: Validate structural alignment

Before evaluation, forecasts are checked for **structural compatibility with the frame**:

- correct resolution and horizon,
- non-negativity (where required),
- consistent indexing,
- and absence of implicit aggregation or smoothing.

Forecasts that fail basic structural alignment are excluded before evaluation, not penalized downstream.

---

## Outputs

This workflow produces two artifacts:

### 1. Forecast-ready evaluation panel

A panel containing:
- realized demand,
- aligned forecast candidates,
- entity and time indices,
- and evaluation metadata.

This panel is the sole input to downstream diagnostics.

### 2. Forecast candidate set

A finite, explicitly enumerated set of forecasts eligible for evaluation.

No ranking, scoring, or filtering occurs here beyond structural admissibility.

---

## Scope and non-goals

This workflow explicitly does **not**:

- diagnose demand structure,
- assess forecast quality or readiness,
- apply asymmetric cost,
- tune or adjust forecasts,
- or determine policy allowability.

Those responsibilities belong to later workflows.

The purpose of Data → Forecast is **preparation and constraint**, not judgment.

---

## Governance notes

All declarations made in this workflow are **binding**.

Downstream stages may not:
- reinterpret resolution,
- alter entity definitions,
- or introduce implicit assumptions about units or continuity.

If such changes are required, the workflow must be rerun under a new evaluation context.

---

## Transition to evaluation

Once this workflow completes, the system has everything required to ask:

> *Given these forecasts and this demand, under admissible interpretation, how ready is the system?*

That question is addressed in **[Forecast → Evaluation](forecast-to-evaluation.md)**.
