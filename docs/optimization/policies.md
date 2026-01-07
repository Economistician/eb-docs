# Policies

Policies define how evaluation results are translated into decisions within the Electric Barometer framework. They encode preferences, tradeoffs, and risk posture explicitly, rather than allowing them to emerge implicitly from metrics or implementations.

This document explains what policies are, why they matter, and how they operate within optimization and decisioning workflows.

---

## What a policy is

A policy is an explicit set of rules that governs how evaluation outputs are interpreted and acted upon.

A policy may specify:

- How multiple metrics are combined or prioritized
- How asymmetric cost assumptions are applied
- How tradeoffs are resolved when objectives conflict
- How near-ties or ambiguous outcomes are handled
- When conservative versus aggressive behavior is preferred

Policies encode **intent**, not technical capability.

---

## What a policy is not

A policy is **not**:

- A forecasting model
- An evaluation metric
- A cost function embedded in code
- An optimization algorithm
- A heuristic applied ad hoc

Policies operate *after* evaluation and *before* decisions.

For conceptual grounding, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## Why policies must be explicit

In many systems, policy exists implicitly:

- The “best” metric wins by default
- Small numerical differences are over-interpreted
- Preferences are hard-coded or undocumented
- Decisions cannot be reconstructed later

Electric Barometer requires policies to be explicit so that:

- Decisions are explainable
- Tradeoffs are visible
- Changes are intentional
- Outcomes are reproducible

For governance implications, see **[Governance](../concepts/governance/)**.

---

## Policy inputs

Policies consume structured evaluation outputs.

Common inputs include:

- Metric values (e.g., CWSL)
- Segment-level summaries
- Sensitivity or stability indicators
- Readiness-adjusted scores
- Constraints or thresholds

Policies do not reinterpret raw data or forecasts directly.

---

## Policy outputs

Policy application produces **decision-ready outcomes**, such as:

- Ranked forecasting systems
- Selected configurations
- Eligibility or exclusion flags
- Tie-breaking outcomes
- Signals for retuning or escalation

These outputs are then passed to decisioning or operational layers.

---

## Relationship to metrics

Metrics measure behavior under assumptions. Policies determine what to do with those measurements.

For example:

- CWSL measures cost-aligned loss  
  (see **[CWSL](../metrics/cwsl/)**)
- A policy may prioritize lower CWSL under certain constraints
- Another policy may tolerate higher CWSL for improved stability

This separation ensures that metrics remain reusable across contexts while policies remain adaptable.

---

## Relationship to cost ratios

Cost ratios are policy parameters.

They influence how metrics like CWSL behave, but they do not determine decisions on their own.

See **[Cost Ratio Optimization](cost-ratio/)** for how cost ratios are tuned within policy frameworks.

---

## Relationship to readiness and RAL

Policies often operate on **readiness-adjusted outputs** rather than raw metrics.

Readiness adjustments may:

- Penalize unstable systems
- Dampen extreme sensitivity
- Reflect operational constraints

Policies then apply decision rules to these adjusted values.

See **[Readiness and RAL](../concepts/readiness-and-ral/)** for conceptual grounding.

---

## Policy tuning and evolution

Policies are expected to evolve.

Tuning a policy may involve:

- Adjusting cost ratios
- Refining thresholds or priorities
- Changing tie-breaking rules
- Adapting to new operational contexts

Policy tuning should be explicit and governed. See **[Tune a Policy](../guides/tune-a-policy/)** for procedural guidance.

---

## Governance considerations

Policies encode organizational intent and must therefore be governed.

Good governance practices include:

- Versioning policy definitions
- Documenting rationale and tradeoffs
- Preserving historical policies
- Linking decisions to the policy in effect at the time

Governance ensures that policy changes remain transparent and auditable.

---

## How policies fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Metrics measure forecasting system behavior
- Cost ratios define asymmetric weighting assumptions
- Evaluation produces structured outputs
- Readiness contextualizes evaluation results
- Policies apply explicit decision rules
- Decisioning commits to actions
- Releases preserve reproducibility

Policies are the connective tissue between measurement and action.

---

## What policies enable

Explicit policies enable:

- Consistent decision-making across time and teams
- Responsible handling of tradeoffs
- Clear explanation of outcomes
- Safe evolution of evaluation systems
- Alignment between technical systems and organizational goals

Without policies, decisions drift. With explicit policies, decisions are governed.

---

## Where to go next

- Review **[Tune a Policy](../guides/tune-a-policy/)** for hands-on tuning
- Revisit **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)** for role clarity
- Explore **[Cost Ratio Optimization](cost-ratio/)** for asymmetric weighting
- Consult **[Papers](../papers/)** for formal policy frameworks

Policies make decisions defensible. In Electric Barometer, defensibility is a design requirement.
