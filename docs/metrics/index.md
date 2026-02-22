# Other Metrics

Electric Barometer is designed to support **multiple evaluation metrics**, not just a single score. While Cost-Weighted Service Loss (CWSL) is the flagship metric for asymmetric cost, other metrics may be appropriate depending on context, constraints, and evaluation goals.

This section provides orientation and guidance for metrics beyond CWSL.

---

## Why multiple metrics exist

No single metric can capture all aspects of forecasting system behavior.

Different metrics emphasize different properties, such as:

- Average accuracy
- Variability or stability
- Bias or directional tendency
- Sensitivity to outliers
- Operational feasibility

Using multiple metrics allows evaluators to understand tradeoffs rather than collapse behavior into a single number.

---

## The role of non-CWSL metrics

Metrics other than CWSL typically serve one of three roles:

1. **Diagnostic**
   Help explain *why* a system behaves the way it does

2. **Complementary**
   Surface properties not directly captured by cost-weighted loss

3. **Contextual**
   Provide additional signal under specific operating conditions

These metrics inform understanding; they do not override policy or decision logic.

---

## Relationship to CWSL

CWSL is the reference metric for **cost-aware evaluation**, but it is not intended to stand alone.

Common patterns include:

- Using symmetric accuracy metrics to contextualize CWSL results
- Inspecting bias metrics to explain directional loss
- Using stability metrics to support readiness assessment
- Comparing metrics to identify tradeoffs or sensitivities

Disagreement between metrics is expected and often informative.

---

## Examples of other metric categories

While Electric Barometer does not prescribe a fixed taxonomy, commonly useful categories include:

- **Symmetric accuracy metrics**
  e.g., absolute or squared error measures

- **Bias and directional metrics**
  e.g., systematic over- or under-forecasting tendencies

- **Stability and volatility metrics**
  e.g., sensitivity to noise or regime changes

- **Coverage or feasibility metrics**
  e.g., constraint violations or infeasible outputs

Specific metrics within these categories may vary by application.

---

## What this section does not do

This section does **not**:

- Define or endorse a fixed list of metrics
- Replace CWSL as the primary cost-aware measure
- Provide implementation-level details
- Prescribe how metrics should be combined

Metric selection and prioritization are governed by policy and decision context.

See **[Policies](../../optimization/policies/)** for how metrics are used downstream.

---

## When to introduce a new metric

A new metric may be appropriate when:

- Existing metrics fail to capture an important behavior
- A specific risk or constraint must be surfaced explicitly
- Diagnostic insight is needed beyond cost-weighted loss
- Evaluation results are ambiguous or unstable

New metrics should be introduced deliberately, with clear documentation of purpose and assumptions.

---

## Governance considerations

Like all evaluation metrics, additional metrics must be governed.

Good governance includes:

- Explicit documentation of metric intent
- Clear separation from decision logic
- Stable definitions over time
- Versioning and traceability

Metrics should illuminate decisions, not obscure them.

---

## How other metrics fit into the lifecycle

Within the Electric Barometer framework:

- Forecasting systems generate outputs
- Multiple metrics measure different aspects of behavior
- Evaluation surfaces tradeoffs and patterns
- Readiness and policy contextualize results
- Decisions are made deliberately and governed

Other metrics enrich evaluation without replacing core principles.

---

## Where to go next

- Review **[Metrics Overview](../)** for the role of metrics in the framework
- Explore **[CWSL](../cwsl/)** for cost-aware evaluation
- See **[Evaluation vs Decisioning](../../concepts/evaluation-vs-decisioning/)** for role clarity
- Consult **[Guides](../../guides/)** for evaluation workflows

Electric Barometer treats metrics as lenses, not verdicts.
Other metrics exist to broaden understanding, not to fragment decision-making.
