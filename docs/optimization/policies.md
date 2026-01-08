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
- **Whether evaluation outputs are structurally admissible**

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

However, some policies operate on the **validity of evaluation itself**, rather than on the ranking of results.

For conceptual grounding, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## Why policies must be explicit

In many systems, policy exists implicitly:

- The “best” metric wins by default
- Small numerical differences are over-interpreted
- Preferences are hard-coded or undocumented
- Structural assumptions are left unchecked
- Decisions cannot be reconstructed later

Electric Barometer requires policies to be explicit so that:

- Decisions are explainable
- Tradeoffs are visible
- Structural assumptions are surfaced
- Changes are intentional
- Outcomes are reproducible

For governance implications, see **[Governance](../concepts/governance/)**.

---

## Policy inputs

Policies consume **structured evaluation outputs**.

Common inputs include:

- Metric values (e.g., CWSL)
- Segment-level summaries
- Sensitivity or stability indicators
- Readiness-adjusted scores
- Constraints or thresholds
- **Structural diagnostics (e.g., demand quantization properties)**

Policies do not reinterpret raw data or forecasts directly.

---

## Policy outputs

Policy application produces **decision-ready outcomes**, such as:

- Ranked forecasting systems
- Selected configurations
- Eligibility or exclusion flags
- Tie-breaking outcomes
- Signals for retuning or escalation
- **Validation or rejection of evaluation results**

These outputs are then passed to decisioning or operational layers.

---

## Relationship to metrics

Metrics measure behavior under assumptions. Policies determine what to do with those measurements — or whether they are valid to use at all.

For example:

- CWSL measures cost-aligned loss  
  (see **[CWSL](../metrics/cwsl/)**)
- A policy may prioritize lower CWSL under certain constraints
- Another policy may tolerate higher CWSL for improved stability
- **A structural policy may determine that a metric is invalid unless certain conditions are met**

This separation ensures that metrics remain reusable across contexts while policies remain responsible for interpretability and correctness.

---

## Structural and admissibility policies (DQC)

Not all policies express preferences. Some policies govern **compatibility and admissibility**.

Demand Quantization Compatibility (DQC) is an example of a structural policy:

- It determines whether realized demand lies on a discrete grid
- It infers the governing unit size (Δ\*)
- It classifies demand as CONTINUOUS, QUANTIZED, or PACKED
- It enforces unit compatibility by requiring forecasts to be snapped to Δ\* when necessary

Under DQC:

- Evaluation without snapping may be **mathematically invalid**
- Tolerance parameters (τ) must be interpreted in **grid units**, not raw numeric units
- Certain evaluation results may be rejected or corrected by policy before decisioning

DQC does not measure performance. It governs **whether performance measurements are meaningful**.

---

## Relationship to cost ratios

Cost ratios are policy parameters.

They influence how metrics like CWSL behave, but they do not determine decisions on their own.

Structural policies such as DQC operate *orthogonally* to cost ratios:
- Cost ratios govern tradeoffs
- DQC governs unit compatibility and validity

See **[Cost Ratio Optimization](cost-ratio/)** for how cost ratios are tuned within policy frameworks.

---

## Relationship to readiness and RAL

Policies often operate on **readiness-adjusted outputs** rather than raw metrics.

Readiness adjustments may:

- Penalize unstable systems
- Dampen extreme sensitivity
- Reflect operational constraints

Structural policies apply *before* or *alongside* readiness adjustments to ensure that the inputs to RAL are valid.

See **[Readiness and RAL](../concepts/readiness-and-ral/)** for conceptual grounding.

---

## Policy tuning and evolution

Policies are expected to evolve.

Tuning a policy may involve:

- Adjusting cost ratios
- Refining thresholds or priorities
- Changing tie-breaking rules
- Revising admissibility criteria
- Adapting to new operational contexts

Policy tuning should be explicit and governed. See **[Tune a Policy](../guides/tune-a-policy/)** for procedural guidance.

---

## Governance considerations

Policies encode organizational intent and must therefore be governed.

Good governance practices include:

- Versioning policy definitions
- Documenting rationale and tradeoffs
- Preserving historical policies
- Recording structural assumptions
- Linking decisions to the policy in effect at the time

Governance ensures that policy changes remain transparent, auditable, and defensible.

---

## How policies fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Metrics measure forecasting system behavior
- Structural diagnostics assess validity and compatibility
- Cost ratios define asymmetric weighting assumptions
- Evaluation produces structured outputs
- Readiness contextualizes evaluation results
- Policies apply explicit decision and admissibility rules
- Decisioning commits to actions
- Releases preserve reproducibility

Policies are the connective tissue between measurement and action.

---

## What policies enable

Explicit policies enable:

- Consistent decision-making across time and teams
- Responsible handling of tradeoffs
- Structural correctness of evaluation
- Clear explanation of outcomes
- Safe evolution of evaluation systems
- Alignment between technical systems and organizational goals

Without policies, decisions drift.  
Without structural policies, decisions may rest on invalid measurements.  
With explicit policies, decisions are governed.

---

## Where to go next

- Review **[Tune a Policy](../guides/tune-a-policy/)** for hands-on tuning
- Revisit **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)** for role clarity
- Explore **[Cost Ratio Optimization](cost-ratio/)** for asymmetric weighting
- Consult **[Papers](../papers/)** for formal policy frameworks

Policies make decisions defensible. In Electric Barometer, defensibility includes correctness.
