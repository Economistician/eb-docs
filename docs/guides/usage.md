# Usage

Electric Barometer is designed to sit *around* forecasting systems, not replace them.

It does not generate forecasts. Instead, it provides a structured framework for evaluating, comparing, and selecting forecasts based on operational cost, risk, and readiness.

This section describes typical usage patterns and integration flows.

---

## Typical Workflow

A standard Electric Barometer workflow consists of four stages:

1. **Forecast Generation**  
2. **Evaluation Configuration**  
3. **Readiness & Cost Assessment**  
4. **Selection & Reporting**

Each stage is intentionally decoupled to allow flexibility in implementation.

---

## 1. Forecast Generation

Electric Barometer accepts forecasts from any source, including:

- Statistical models (e.g., ARIMA, exponential smoothing)
- Machine learning models (e.g., gradient boosting, neural networks)
- Vendor-provided forecasts
- Human or rules-based overrides

Forecasts may be produced:

- Offline or in batch
- In real time
- At different temporal or spatial resolutions

Electric Barometer treats all forecast sources uniformly at the evaluation layer.

---

## 2. Evaluation Configuration

Before evaluation, the operational context must be defined.

This typically includes:

- Cost asymmetry assumptions (over-forecast vs under-forecast)
- Tolerance bands for acceptable error
- Readiness constraints (e.g., volatility sensitivity, stability)
- Evaluation horizon and aggregation logic

Configuration reflects business priorities and may vary by:

- Location
- Product or service type
- Time period
- Operational regime

These settings are explicit inputs, not hidden heuristics.

---

## 3. Readiness & Cost Assessment

Once configured, Electric Barometer evaluates each forecast along multiple dimensions, such as:

- Cost-weighted loss
- Error asymmetry
- Tolerance band violations
- Stability under changing conditions

Rather than collapsing results into a single opaque score, Electric Barometer preserves structure to support interpretation.

This enables users to understand *why* a forecast is favored, not just *which* forecast wins.

---

## 4. Selection & Reporting

Based on the evaluation outputs, Electric Barometer can be used to:

- Select the most operationally appropriate forecast
- Rank forecasts under different assumptions
- Identify regimes where no forecast is acceptable
- Support override or fallback decisions

Results may be surfaced through:

- Dashboards
- Reports
- Automated selection logic
- Governance reviews

Electric Barometer supports both automated and human-in-the-loop workflows.

---

## Integration Patterns

Electric Barometer is commonly integrated in one of three ways.

---

### Evaluation Layer

Electric Barometer operates as a downstream evaluation layer that receives forecasts and returns comparative assessments.

This pattern is ideal when:

- Forecasting systems are already in place
- Multiple teams or vendors provide forecasts
- Stability and auditability are priorities

---

### Model Selection Gate

Electric Barometer acts as a gating mechanism before forecasts are deployed to production systems.

In this pattern, forecasts must satisfy readiness and tolerance criteria before being accepted.

This is common in high-risk or high-cost operational environments.

---

### Diagnostic & Governance Tool

Electric Barometer is used periodically to review forecast performance and decision outcomes.

This supports:

- Post-mortem analysis
- Vendor comparison
- Policy refinement
- Organizational learning

Evaluation outputs become part of the governance record.

---

## What Electric Barometer Does *Not* Do

Electric Barometer intentionally avoids:

- Training forecasting models
- Optimizing model hyperparameters
- Replacing domain expertise
- Enforcing a single definition of “accuracy”

These responsibilities remain with forecasting and operations teams.

---

## Minimal Example (Conceptual)

A simplified conceptual example:

1. Three forecasts are generated for the same demand series
2. Cost-weighted loss functions are defined
3. Readiness adjustments are applied
4. One forecast is selected for deployment

The selected forecast may *not* be the one with lowest traditional error, but it will be the one that best aligns with operational priorities.

---

## When to Use Electric Barometer

Electric Barometer is particularly valuable when:

- Forecast errors have asymmetric consequences
- Accuracy metrics conflict with lived operational experience
- Multiple forecasts must be compared fairly
- Decision justification and auditability matter

It is less useful in purely academic or exploratory settings where operational consequences are not material.

---

## Summary

Electric Barometer provides a disciplined, transparent way to evaluate forecasts in real-world operational contexts.

It enables organizations to move from:

> “This model is more accurate”

to:

> “This forecast is more appropriate for how we operate.”