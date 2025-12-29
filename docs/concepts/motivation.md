# Motivation

Forecasting systems are typically evaluated using statistical accuracy metrics such as MAE, RMSE, or MAPE. While these measures are mathematically convenient, they are often **misaligned with operational reality**.

In real-world environments, forecast errors do not have symmetric consequences. Over-forecasting and under-forecasting lead to *different costs*, *different risks*, and *different downstream decisions*. Treating these errors as interchangeable can result in models that appear accurate on paper but perform poorly in practice.

Electric Barometer exists to address this gap.

---

## The Problem with Accuracy-First Evaluation

Traditional forecast evaluation implicitly assumes that all errors are equal. This assumption breaks down in operational systems where forecasts drive actions such as:

- Inventory ordering and production planning
- Labor scheduling and staffing decisions
- Service-level commitments and capacity allocation
- Waste reduction and shortage prevention

For example:

- A 10% over-forecast may result in waste, spoilage, or idle labor
- A 10% under-forecast may result in stockouts, service loss, or customer dissatisfaction

From an operational perspective, these two errors are *not equivalent*, even if their statistical magnitude is identical.

---

## Asymmetry Is the Rule, Not the Exception

In most production, service, and logistics environments:

- Costs are **nonlinear**
- Penalties are **asymmetric**
- Risk tolerance varies by context, time, and objective

Yet most forecasting pipelines still rely on symmetric loss functions and aggregate accuracy scores.

This mismatch leads to predictable failure modes:

- Models selected for benchmark performance but rejected by operations
- “Accurate” forecasts that systematically violate business constraints
- Governance disputes over which model is “best”

Electric Barometer reframes forecast evaluation to reflect how decisions are actually made.

---

## Decision Quality over Statistical Precision

Electric Barometer shifts the focus from *how close a forecast is* to *how suitable it is for the decision it informs*.

Rather than asking:

> “Which forecast minimizes error?”

Electric Barometer asks:

> “Which forecast best balances cost, risk, and operational readiness?”

This change in framing enables:

- Context-aware model comparison
- Explicit tradeoff analysis between competing forecasts
- Transparent alignment between analytics and operational priorities

Accuracy still matters—but it is no longer the sole objective.

---

## A Framework, Not a Model

Electric Barometer does not generate forecasts.

Instead, it provides a **measurement and selection framework** that evaluates competing forecasting systems under asymmetric, cost-aware criteria. This makes it compatible with:

- Statistical forecasting models
- Machine learning and deep learning approaches
- Vendor-provided or black-box forecasting engines

By separating *forecast generation* from *forecast evaluation*, Electric Barometer allows organizations to evolve their modeling strategies without rewriting their decision logic.

---

## Who This Is For

Electric Barometer is designed for:

- Analytics teams supporting operational decision-making
- Data scientists working in production environments
- Forecast governance bodies and review committees
- Leaders responsible for balancing performance, cost, and risk

It is especially well-suited for industries where small forecast errors can have outsized consequences.

---

## Where This Leads

Electric Barometer provides the conceptual foundation for:

- Cost-aware loss metrics
- Readiness-adjusted evaluation layers
- Transparent forecast governance
- Operationally defensible model selection

The following sections introduce the core concepts that make this possible.
