# How Electric Barometer Works

Electric Barometer is not a forecasting model.
It is a **decision framework** for evaluating, comparing, and selecting forecasting systems based on how their errors translate into **real operational costs**.

This section explains how the framework operates conceptually and mechanically.

---

## From Accuracy to Readiness

Traditional forecast evaluation focuses on statistical accuracy:

- Mean Absolute Error (MAE)
- Root Mean Squared Error (RMSE)
- Mean Absolute Percentage Error (MAPE)

While useful, these metrics assume that **all errors are symmetric and equally costly**.

In operational environments, this assumption fails.

Electric Barometer replaces the question:

> *“Which forecast is most accurate?”*

with:

> *“Which forecast is most **ready** for this operational context?”*

Readiness reflects how forecast errors propagate into outcomes such as:
- Waste
- Shortages
- Service loss
- Labor inefficiency
- Customer dissatisfaction

---

## The Core Flow

At a high level, Electric Barometer evaluates forecasts through the following steps:

1. **Generate candidate forecasts**
   Multiple models or forecasting systems produce predictions for the same target.

2. **Define operational asymmetry**
   The cost of over-forecasting and under-forecasting is explicitly specified.
   These costs may differ in magnitude, shape, or tolerance.

3. **Transform error into loss**
   Forecast errors are mapped through asymmetric loss functions that reflect
   real operational consequences.

4. **Aggregate readiness metrics**
   Loss is summarized into interpretable metrics that reflect overall readiness,
   not raw error.

5. **Select or rank forecasts**
   Forecasts are compared based on their readiness under the defined conditions.

Each step is modular and intentionally decoupled from any specific modeling technology.

---

## Asymmetric Loss as the Foundation

At the heart of Electric Barometer is the idea that **error is not the outcome — loss is**.

Rather than minimizing error directly, the framework evaluates forecasts using
cost-aware loss functions that encode:

- Directional asymmetry (over vs under)
- Nonlinear penalties
- Tolerance bands
- Operational thresholds

This allows two forecasts with similar accuracy to be **clearly distinguished**
based on how risky or costly their errors are in practice.

---

## Forecast Readiness

Readiness is a summary concept that answers:

> *Is this forecast safe to deploy in this operational environment?*

Readiness metrics are designed to be:
- Comparable across models
- Interpretable by non-technical stakeholders
- Stable under distributional shifts
- Aligned with business consequences

Rather than a single scalar score, readiness can be expressed through:
- Cost-weighted aggregates
- Risk bands
- Acceptability thresholds
- Scenario-specific rankings

This makes the framework suitable for governance, review, and deployment decisions.

---

## Separation of Concerns

Electric Barometer intentionally separates responsibilities:

- **Metrics**
  Define how loss and readiness are computed.

- **Evaluation utilities**
  Orchestrate comparisons, adjustments, and aggregations.

- **Adapters**
  Normalize outputs from diverse forecasting systems into a common interface.

This separation allows:
- New metrics to be added without changing model code
- New models to be evaluated without rewriting evaluation logic
- Organizations to encode their own cost structures without changing tooling

---

## What Electric Barometer Does *Not* Do

To avoid confusion, Electric Barometer deliberately does **not**:

- Train forecasting models
- Optimize model parameters
- Enforce a single loss function
- Prescribe one “correct” forecast

Instead, it provides a principled way to **evaluate and choose** among forecasts
once they exist.

---

## Why This Matters

Operational forecasting decisions are rarely about statistical perfection.
They are about **risk, cost, and consequences**.

Electric Barometer provides a structured way to:
- Make those tradeoffs explicit
- Compare systems fairly
- Defend decisions to stakeholders
- Adapt evaluation as conditions change

In short, it shifts forecasting evaluation from *accuracy obsession* to
**decision readiness**.

---

## Where to Go Next

- For conceptual grounding, see **Core Concepts**
- For practical workflows, see **Usage**
- For formal definitions, see the **Papers** section
- For implementation details, see the **Packages** documentation
