# Cost Ratio Optimization

Cost ratio optimization determines how relative costs of different error types are set and adjusted within the Electric Barometer framework. It governs **how asymmetric cost assumptions are parameterized**, not how forecasts are generated or how metrics are computed.

This document describes what the cost ratio represents, why it must be optimized explicitly, and how it fits into governed decision-making.

---

## What the cost ratio represents

The **cost ratio** expresses the relative penalty assigned to different directions or types of error. Most commonly, it encodes the tradeoff between:

- Under-forecasting loss
- Over-forecasting loss

The ratio does not represent an absolute cost. It expresses **relative preference or risk posture** under a given operational context.

Cost ratios are policy parameters, not data-derived truths.

---

## Why cost ratios must be explicit

In many forecasting systems, asymmetric cost is handled implicitly:

- Hard-coded penalty weights
- Unstated business rules
- Metric behavior treated as “objective”

These approaches obscure assumptions and make decisions difficult to explain or reproduce.

Electric Barometer requires cost ratios to be explicit so that:

- Tradeoffs are visible
- Sensitivity can be analyzed
- Policies can evolve deliberately
- Decisions can be audited

For conceptual grounding, see **[Asymmetric Cost](../concepts/asymmetric-cost/)** and **[Governance](../concepts/governance/)**.

---

## Cost ratio vs metrics

Cost ratios are **inputs to metrics**, not metrics themselves.

For example:

- CWSL uses cost ratios to weight error direction  
  (see **[CWSL Definition](../metrics/cwsl/definition/)**)
- Changing the cost ratio changes metric output
- The metric computation itself remains unchanged

This separation ensures that measurement and policy remain distinct.

See **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)** for why this distinction matters.

---

## When to optimize a cost ratio

Cost ratio optimization is appropriate when:

- Evaluation results depend strongly on weighting assumptions
- Organizational priorities or risk tolerance change
- Different operational contexts require different tradeoffs
- Near-ties emerge under multiple metrics
- Sensitivity to asymmetric cost must be explored

Cost ratios should not be treated as fixed constants unless the decision context is static.

---

## Cost ratio as a policy lever

Within Electric Barometer, the cost ratio is treated as a **policy lever**.

Policy levers:

- Encode preferences, not facts
- May vary across contexts
- Are subject to governance
- Can be tuned without retraining models

Optimizing a cost ratio means selecting values that best align evaluation outcomes with decision objectives—not discovering a “true” cost.

---

## Approaches to cost ratio optimization

Cost ratio optimization may involve:

- Sweeping candidate ratios and observing evaluation outcomes
- Identifying regions of stability or sensitivity
- Comparing selections under different ratios
- Stress-testing decisions under extreme assumptions

Optimization here is exploratory and comparative, not purely numerical.

For procedural guidance, see **[Tune a Policy](../guides/tune-a-policy/)**.

---

## Relationship to readiness and RAL

Cost ratios influence readiness indirectly.

Extreme or unstable ratios may:

- Over-amplify rare events
- Produce volatile rankings
- Reduce decision robustness

Readiness considerations may therefore constrain or adjust cost ratio usage.

See **[Readiness and RAL](../concepts/readiness-and-ral/)** for how cost assumptions are contextualized before decisioning.

---

## Governance considerations

Because cost ratios encode organizational intent, they must be governed.

Good governance practices include:

- Versioning cost ratio configurations
- Documenting rationale for chosen values
- Preserving historical ratios for auditability
- Avoiding silent or implicit changes

Governance ensures that changes in cost posture are intentional and explainable.

---

## How cost ratio optimization fits into the lifecycle

Within the Electric Barometer framework:

- Metrics measure behavior under given cost ratios
- Cost ratios define asymmetric weighting assumptions
- Evaluation surfaces tradeoffs under those assumptions
- Readiness contextualizes metric outputs
- Policy tuning selects appropriate ratios
- Decisioning applies governed rules
- Releases preserve reproducibility

Cost ratio optimization is the hinge between evaluation and policy.

---

## What cost ratio optimization does not do

Cost ratio optimization does **not**:

- Improve forecast accuracy
- Change model behavior
- Replace evaluation metrics
- Eliminate tradeoffs
- Decide actions automatically

It clarifies assumptions so that decisions can be made responsibly.

---

## Where to go next

- Review **[CWSL Interpretation](../metrics/cwsl/interpretation/)** to see how cost ratios affect evaluation
- Follow **[Tune a Policy](../guides/tune-a-policy/)** for procedural tuning guidance
- Revisit **[Asymmetric Cost](../concepts/asymmetric-cost/)** for conceptual grounding
- Consult **[Papers](../papers/)** for formal treatments of cost-aware optimization

Cost ratio optimization makes tradeoffs explicit. In Electric Barometer, explicit tradeoffs are a prerequisite for governed, defensible decision-making.
