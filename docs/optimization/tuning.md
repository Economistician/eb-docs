# Tuning

Tuning is the process of adjusting parameters and policies to align evaluation outcomes with a specific decision context. In the Electric Barometer framework, tuning operates **above metrics and models**, shaping how tradeoffs are resolved rather than how predictions are generated.

This document describes what tuning is, what it applies to, and how it fits into governed optimization workflows.

---

## What tuning is

Tuning is the deliberate adjustment of **decision-facing parameters** to improve alignment between evaluation results and operational objectives.

Tuning may involve:

- Adjusting cost ratios
- Refining policy thresholds
- Modifying tie-breaking criteria
- Selecting acceptable performance bands
- Balancing stability versus responsiveness

Tuning encodes preference and risk posture explicitly.

---

## What tuning is not

Tuning is **not**:

- Training or retraining forecasting models
- Optimizing loss functions during model fitting
- Modifying metric definitions
- Searching for a single numerical optimum
- Overfitting to historical outcomes

Those activities belong to modeling and evaluation stages.

For role clarity, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## Why tuning is necessary

Operational contexts evolve:

- Costs change
- Constraints shift
- Risk tolerance varies
- Decision cadence adjusts

A fixed set of assumptions rarely remains optimal over time. Tuning allows the system to adapt **without rewriting metrics or models**, preserving stability while remaining responsive.

---

## What can be tuned

Within Electric Barometer, tunable elements include:

- **Cost ratios**  
  (see **[Cost Ratio Optimization](cost-ratio/)**)

- **Policy parameters**  
  (see **[Policies](policies/)**)

- **Tie-breaking rules**  
  (see **[Tie-Breaking](tie-breaking/)**)

- **Readiness adjustments**  
  (see **[Readiness and RAL](../concepts/readiness-and-ral/)**)

Tuning focuses on *how evaluation results are interpreted*, not on how they are computed.

---

## Tuning versus optimization

Although related, tuning and optimization serve different purposes.

- **Optimization** explores tradeoffs and candidate configurations
- **Tuning** selects and refines configurations based on intent

Optimization surfaces possibilities.  
Tuning commits to choices.

For procedural guidance, see **[Tune a Policy](../guides/tune-a-policy/)**.

---

## Tuning workflow overview

A typical tuning workflow includes:

1. Running an evaluation  
   (see **[Run an Evaluation](../guides/run-an-evaluation/)**)

2. Identifying tunable parameters

3. Exploring sensitivity and tradeoffs

4. Applying readiness considerations

5. Selecting tuned values

6. Documenting and versioning the result

This process emphasizes transparency and reproducibility over speed.

---

## Sensitivity-aware tuning

Responsible tuning requires sensitivity analysis.

This includes:

- Observing how outcomes change across parameter ranges
- Identifying regions of stability
- Avoiding brittle configurations
- Understanding interactions between parameters

Sensitivity-aware tuning helps prevent over-commitment to fragile assumptions.

---

## Relationship to governance

Tuning directly affects decisions and must therefore be governed.

Governance ensures that:

- Tuning actions are intentional
- Changes are documented and reviewable
- Historical configurations are preserved
- Decisions can be traced to tuning state

For governance principles, see **[Governance](../concepts/governance/)**.

---

## How tuning fits into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Metrics measure behavior
- Evaluation produces structured outputs
- Optimization explores tradeoffs
- Tuning refines assumptions and policies
- Readiness contextualizes results
- Decisioning commits to actions
- Releases preserve reproducibility

Tuning is the step where abstract evaluation becomes actionable alignment.

---

## What tuning enables

Explicit tuning enables:

- Adaptation to changing operational contexts
- Clear articulation of tradeoffs
- Separation of measurement from preference
- Stable evolution of decision systems
- Alignment between technical evaluation and business intent

Without tuning, systems drift. With tuning, they adapt deliberately.

---

## Where to go next

- Review **[Policies](policies/)** to understand policy structure
- Explore **[Cost Ratio Optimization](cost-ratio/)** for asymmetric weighting
- See **[Tie-Breaking](tie-breaking/)** for resolving ambiguity
- Follow **[Tune a Policy](../guides/tune-a-policy/)** for hands-on guidance
- Consult **[Papers](../papers/)** for formal treatments of tuning and optimization

Tuning is not about finding perfection. It is about making tradeoffs explicit, governed, and aligned with the decisions Electric Barometer is designed to support.
