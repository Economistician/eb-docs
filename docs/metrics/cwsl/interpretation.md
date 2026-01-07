# Cost-Weighted Service Loss (CWSL): Interpretation

This page explains how to interpret Cost-Weighted Service Loss (CWSL) values produced during evaluation. Interpretation focuses on *what CWSL tells you* about forecasting system behavior under asymmetric cost—not on how to make decisions or choose policies.

CWSL is an evaluation metric. Its outputs must be interpreted in context and combined with readiness and policy layers before action is taken.

---

## What a CWSL value represents

A CWSL value represents **cost-aligned loss** accumulated over an evaluation scope under explicit cost-weighting assumptions.

Interpreting a CWSL value requires understanding:

- The evaluation scope (time, entities, segments)
- The cost weights applied to error directions
- The aggregation method used
- The comparison baseline (if any)

Lower CWSL values indicate lower expected loss *under the specified assumptions*.

---

## Interpreting CWSL comparatively

CWSL is most meaningful when used **comparatively**.

When comparing two forecasting systems under the same configuration:

- The system with lower CWSL incurs lower expected cost-aligned loss
- Differences reflect both error magnitude and error direction
- Rankings may differ from symmetric accuracy metrics

Comparisons are only valid when evaluation scope and parameters are held constant.

---

## Directional meaning of differences

A difference in CWSL can arise from multiple sources:

- More frequent errors in a costly direction
- Larger errors in a costly direction
- Reduced exposure to high-cost regimes
- Improved stability during critical periods

Interpreting *why* one system has lower CWSL often requires segment-level or temporal inspection rather than relying on a single aggregate value.

---

## Scale and magnitude considerations

CWSL values are expressed in **relative units**, not universal cost units.

This means:

- Absolute values are less meaningful than relative differences
- Comparisons across evaluations with different weights or scopes are not directly comparable
- Trends over time must be interpreted under consistent configurations

CWSL should not be treated as a dollar estimate unless explicitly calibrated to do so.

---

## Relationship to symmetric metrics

CWSL should not be interpreted as a replacement for all accuracy metrics.

Instead:

- Symmetric metrics summarize average error behavior
- CWSL summarizes cost-aligned risk exposure
- Disagreement between metrics highlights tradeoffs

A system that scores well on MAE but poorly on CWSL may be accurate yet operationally risky under the chosen assumptions.

---

## Interpreting near-ties and overlap

When CWSL values are close:

- Differences may fall within noise or uncertainty
- Segment-level behavior may diverge despite similar aggregates
- Policy and readiness considerations become more important

Near-ties should not be resolved by over-interpreting small numerical differences. This is where explicit **[Policy Tuning](../../guides/tune-a-policy/)** and **[Tie-breaking](../../concepts/evaluation-vs-decisioning/)** rules apply.

---

## Sensitivity-aware interpretation

CWSL is intentionally sensitive to cost weights.

As such:

- Interpretation should consider how rankings change under different weight settings
- Stable rankings across reasonable ranges suggest robustness
- Volatile rankings suggest sensitivity to assumptions

Sensitivity analysis supports responsible interpretation. See **[Examples](examples/)** for illustrations.

---

## Segment-level interpretation

CWSL can be computed at multiple granularities.

Interpreting segment-level CWSL helps identify:

- Concentrated risk in specific entities or periods
- Asymmetric exposure hidden by aggregates
- Opportunities for targeted mitigation

Aggregate CWSL values should be viewed as summaries, not substitutes for inspection.

---

## What CWSL does not tell you

CWSL does **not** tell you:

- Which system should be selected
- What policy is preferred
- Whether a system is “ready” for use
- How much cost will be realized in absolute terms

Those determinations require readiness adjustment, policy tuning, and governance.

---

## Interpreting CWSL responsibly

Responsible interpretation of CWSL involves:

- Treating values as conditional on assumptions
- Comparing like with like
- Inspecting distributional behavior
- Avoiding overconfidence in single scores
- Escalating decisions to policy and governance layers

For conceptual grounding, review **[Evaluation vs Decisioning](../../concepts/evaluation-vs-decisioning/)** and **[Readiness and RAL](../../concepts/readiness-and-ral/)**.

---

## Where to go next

- Review **[Assumptions](assumptions/)** to understand what CWSL encodes
- Explore **[Examples](examples/)** for scenario-based intuition
- Revisit **[Definition](definition/)** for formal structure
- Consult **[Asymmetric Cost](../../concepts/asymmetric-cost/)** for conceptual grounding

CWSL interpretation is about understanding *what the metric reveals*, not about declaring outcomes. It is one input into a governed decision process.
