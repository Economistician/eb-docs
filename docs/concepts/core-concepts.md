# Core Concepts

Electric Barometer is built on a small set of foundational concepts that redefine how forecasting systems are evaluated in operational environments. These concepts formalize the gap between statistical accuracy and decision quality.

This section introduces the core ideas used throughout the Electric Barometer ecosystem.

---

## Forecast Error Asymmetry

In operational systems, forecast errors are rarely symmetric in their consequences.

Let:

- Over-forecasting represent situations where supply, labor, or capacity exceeds realized demand
- Under-forecasting represent situations where demand exceeds available resources

Even when absolute error magnitude is identical, the resulting costs, risks, and operational outcomes differ.

Examples include:

- Excess inventory versus stockouts
- Idle labor versus service degradation
- Wasted capacity versus unmet demand

Electric Barometer explicitly models this asymmetry rather than treating forecast errors as interchangeable.

---

## Cost-Weighted Loss

Traditional error metrics measure *distance*. Electric Barometer measures *impact*.

Cost-weighted loss assigns different penalties to different types of forecast error based on their operational consequences. These penalties may reflect:

- Direct financial cost
- Opportunity cost
- Service-level degradation
- Risk exposure

Importantly, cost weighting does not require exact dollar estimates. Relative cost structures are often sufficient to distinguish acceptable from unacceptable forecasts.

This approach allows forecast evaluation to reflect how organizations actually experience error.

---

## Readiness

Readiness describes how well a forecasting system aligns with the operational context in which it is deployed.

A forecast may be statistically accurate yet operationally unready due to factors such as:

- Volatility sensitivity
- Latency or responsiveness
- Constraint violations
- Instability under regime change

Electric Barometer treats readiness as a first-class evaluation dimension rather than an afterthought.

Readiness is not a property of the forecast alone—it is a property of the forecast *in context*.

---

## Tolerance Bands

Operational decisions are rarely binary. Many systems allow for a range of acceptable outcomes.

Tolerance bands define regions where forecast error is operationally acceptable, even if not statistically optimal. Within these regions:

- Corrective actions may not be required
- Costs remain bounded
- Risk is considered manageable

Errors outside tolerance bands represent meaningful operational failures, even if aggregate accuracy metrics appear reasonable.

Electric Barometer emphasizes the shape and width of tolerance bands rather than single-point accuracy.

---

## Tradeoff Surfaces

Forecast evaluation often involves balancing competing objectives, such as:

- Cost versus service level
- Stability versus responsiveness
- Conservatism versus aggressiveness

Electric Barometer represents these tradeoffs explicitly through evaluation surfaces rather than collapsing them into a single score.

This enables:

- Transparent comparison between forecasts
- Context-specific model selection
- Informed governance decisions

Tradeoff surfaces make disagreement visible rather than implicit.

---

## Model Comparability

In many organizations, forecasts originate from heterogeneous sources:

- In-house statistical models
- Machine learning pipelines
- Vendor-provided forecasts
- Human overrides or adjustments

Electric Barometer provides a common evaluative layer that allows these systems to be compared on equal footing, regardless of how the forecasts are produced.

This decoupling supports experimentation without operational disruption.

---

## Evaluation as Governance

Forecast evaluation is not purely technical—it is organizational.

Electric Barometer treats evaluation as a governance mechanism that:

- Encodes operational priorities
- Makes risk tradeoffs explicit
- Reduces ambiguity in model selection
- Creates accountability for decisions

By formalizing evaluation criteria, Electric Barometer helps align analytics teams, operations teams, and leadership around shared decision logic.

---

## Summary

Electric Barometer is grounded in a simple premise:

> Forecast quality cannot be meaningfully assessed without reference to cost, risk, and operational context.

The concepts introduced here form the basis for the metrics, frameworks, and tooling provided throughout the ecosystem.
