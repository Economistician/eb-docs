# Tie-Breaking

Tie-breaking defines how decisions are resolved when evaluation outcomes do not produce a clear winner. In the Electric Barometer framework, tie-breaking is an explicit, policy-driven process—not an implicit consequence of numerical noise or metric ordering.

This document explains when tie-breaking is required, how it operates, and why it must be governed.

---

## Why tie-breaking exists

In real evaluation scenarios, it is common for:

- Multiple forecasting systems to perform similarly
- Differences in metric values to fall within noise or uncertainty
- Tradeoffs to cancel out across metrics or segments
- Rankings to change under small parameter variations

In these cases, attempting to force a single “best” outcome from evaluation alone introduces false precision.

Tie-breaking exists to resolve ambiguity **deliberately**, rather than accidentally.

---

## What tie-breaking is

Tie-breaking is the application of explicit rules to resolve ambiguity between otherwise acceptable alternatives.

Tie-breaking rules may consider:

- Stability versus responsiveness
- Downside risk exposure
- Readiness-adjusted performance
- Simplicity or operational robustness
- Historical consistency or inertia

Tie-breaking encodes preference, not performance.

---

## What tie-breaking is not

Tie-breaking is **not**:

- Selecting the smallest numerical difference
- Re-running evaluation with slightly different parameters
- Adding hidden heuristics to metrics
- Treating noise as signal
- Avoiding decision responsibility

For conceptual grounding, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## When tie-breaking should be applied

Tie-breaking should be applied when:

- Multiple systems fall within an acceptable performance band
- CWSL or other metrics produce near-identical values
- Rankings are unstable under reasonable parameter variation
- Segment-level tradeoffs offset one another
- Evaluation outputs alone do not support a confident choice

Tie-breaking should **not** be applied to override clearly inferior systems.

---

## Relationship to metrics

Metrics surface behavior; they do not resolve ambiguity.

For example:

- Two systems may have similar **[CWSL](../metrics/cwsl/)** values
- One may be more volatile, the other more stable
- Metrics alone cannot encode which is preferred

Tie-breaking rules act on metric outputs, not inside metric computation.

---

## Relationship to readiness and RAL

Tie-breaking often operates on **readiness-adjusted outputs** rather than raw metrics.

Readiness considerations may:

- Penalize unstable systems
- Discount performance in sparse or uncertain regimes
- Favor robustness over marginal gains

See **[Readiness and RAL](../concepts/readiness-and-ral/)** for conceptual grounding.

---

## Tie-breaking as a policy component

Tie-breaking is a component of policy, not a separate system.

Policies may specify:

- Primary metrics for evaluation
- Acceptable performance bands
- Secondary criteria for tie-breaking
- Ordering or precedence rules
- Escalation or deferral conditions

See **[Policies](policies/)** for how tie-breaking fits into policy design.

---

## Common tie-breaking criteria

While criteria vary by context, common tie-breaking dimensions include:

- **Stability** — preference for less volatile behavior
- **Downside risk** — avoidance of rare but costly failures
- **Readiness** — suitability for operational use
- **Simplicity** — fewer dependencies or assumptions
- **Consistency** — alignment with historical behavior

These criteria should be declared explicitly, not inferred post hoc.

---

## Governance considerations

Tie-breaking rules directly influence decisions and must be governed.

Good governance practices include:

- Documenting tie-breaking rules explicitly
- Versioning policy definitions
- Avoiding ad hoc or case-by-case overrides
- Preserving historical tie-breaking context
- Linking decisions to the rules in effect at the time

Governance ensures that tie-breaking remains fair, consistent, and explainable.

---

## How tie-breaking fits into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Metrics measure behavior
- Evaluation compares systems
- Readiness contextualizes results
- Policies define acceptable outcomes
- Tie-breaking resolves ambiguity
- Decisioning commits to action
- Releases preserve traceability

Tie-breaking is the final step before decision commitment when evaluation alone is insufficient.

---

## What tie-breaking enables

Explicit tie-breaking enables:

- Responsible handling of uncertainty
- Avoidance of false precision
- Stable decisions under noise
- Clear explanation of outcomes
- Alignment between technical results and organizational priorities

Without tie-breaking, ambiguity is resolved implicitly. With tie-breaking, it is resolved intentionally.

---

## Where to go next

- Review **[Policies](policies/)** to see how tie-breaking fits into policy design
- Revisit **[CWSL Interpretation](../metrics/cwsl/interpretation/)** for understanding near-ties
- See **[Tune a Policy](../guides/tune-a-policy/)** for procedural guidance
- Consult **[Governance](../concepts/governance/)** for oversight principles

Tie-breaking is not a failure of evaluation. It is a recognition that decision-making under uncertainty requires explicit judgment.
