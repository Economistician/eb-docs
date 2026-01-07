# Cost-Weighted Service Loss (CWSL): Definition

Cost-Weighted Service Loss (CWSL) is an evaluation metric designed to measure forecasting system behavior under **asymmetric cost**. It quantifies the expected operational loss induced by forecast error when different error directions incur different consequences.

CWSL is a **measurement tool**, not a decision rule. It encodes assumptions about cost asymmetry explicitly and produces interpretable, reproducible values suitable for evaluation and comparison.

---

## Purpose of CWSL

CWSL exists to address a limitation of traditional accuracy metrics: their inability to distinguish between errors that are operationally unequal.

Specifically, CWSL is intended to:

- Reflect asymmetric consequences of under- and over-forecasting
- Preserve information about error direction
- Translate forecast error into a cost-aligned loss signal
- Support comparison of forecasting systems under explicit assumptions

CWSL does not prescribe actions or policies. It provides a lens through which forecast behavior can be evaluated.

---

## Conceptual definition

At a conceptual level, CWSL measures loss as a **weighted function of forecast error**, where weights differ depending on the direction of the error.

Key elements include:

- A realized outcome
- A forecasted value
- The signed error between them
- Direction-specific cost weights
- An aggregation over observations

Unlike symmetric loss functions, CWSL assigns different penalties to under-forecasting and over-forecasting, even when the magnitude of error is identical.

---

## Error direction and weighting

CWSL distinguishes between two fundamental error regimes:

- **Under-forecasting** — when the forecast is below the realized outcome
- **Over-forecasting** — when the forecast exceeds the realized outcome

Each regime is associated with its own cost weight. These weights reflect the relative operational impact of the two error types.

The choice of weights is contextual and must be made explicitly. CWSL does not assume a universal or “correct” cost ratio.

---

## Formal structure

Formally, CWSL is defined as an aggregation of per-observation losses, where each loss is computed as:

- The magnitude of the forecast error
- Multiplied by a cost weight determined by error direction

The aggregation may occur across:

- Time
- Entities
- Segments
- Evaluation windows

The resulting value represents the expected cost-aligned loss under the specified weighting assumptions.

Exact mathematical formulations are provided in the formal technical notes and papers.

---

## Relationship to accuracy metrics

CWSL differs from common accuracy metrics in several important ways:

- It is **direction-aware**, not magnitude-only
- It encodes **explicit cost assumptions**
- It measures **operational loss**, not abstract error
- It may rank forecasting systems differently than symmetric metrics

A system that performs well under MAE or RMSE may perform poorly under CWSL if it systematically incurs costly errors.

---

## Assumptions encoded by CWSL

Every metric encodes assumptions. CWSL makes its assumptions explicit.

CWSL assumes:

- Error direction matters
- Costs can be represented as relative weights
- Loss is proportional to error magnitude within each regime
- Aggregation reflects expected operational exposure

These assumptions should be reviewed and validated against the decision context before relying on CWSL outputs.

---

## Scope and limitations

CWSL is designed for evaluation, not decisioning.

It does not:

- Select forecasting systems
- Resolve tradeoffs automatically
- Encode organizational policy
- Replace readiness or governance layers

CWSL provides information. How that information is used depends on policy and decisioning processes.

---

## How CWSL fits into the Electric Barometer framework

Within the Electric Barometer lifecycle:

- Forecasting systems generate candidate outputs
- CWSL measures cost-aligned error behavior
- Evaluation compares systems under explicit assumptions
- Readiness and policy contextualize results
- Decisioning applies explicit rules
- Governance ensures transparency and reproducibility

CWSL is a foundational metric within this framework, but it is not the only possible metric.

---

## Where to go next

- Read **[Interpretation](interpretation/)** to understand how to read CWSL values
- Review **[Assumptions](assumptions/)** to examine cost and modeling implications
- See **[Examples](examples/)** for applied usage scenarios
- Consult **[Asymmetric Cost](../../concepts/asymmetric-cost/)** for conceptual grounding
- Refer to **[Papers](../../papers/)** for formal mathematical definitions

CWSL formalizes asymmetric cost in evaluation. It makes tradeoffs visible without making decisions on behalf of the user.
