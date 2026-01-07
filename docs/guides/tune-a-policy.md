# Tune a Policy

Policy tuning determines how evaluation results are translated into decisions. In Electric Barometer, policies encode preferences, tradeoffs, and risk posture rather than technical performance alone.

This guide describes how to tune a policy in a way that is explicit, reproducible, and governed—without conflating policy choices with evaluation or modeling logic.

---

## What policy tuning is (and is not)

Policy tuning answers the question:

> *Given evaluation outputs, how should tradeoffs be resolved to support a specific operational objective?*

Policy tuning does **not**:

- Change how metrics are computed
- Modify forecasting models
- Reinterpret evaluation results ad hoc
- Replace evaluation with heuristics

Evaluation measures behavior.  
Policy determines action.

For the conceptual boundary, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## When you should tune a policy

Tune a policy when:

- Evaluation surfaces meaningful tradeoffs
- Cost asymmetry must be adjusted or refined
- Organizational priorities or risk tolerance change
- Multiple systems perform similarly under evaluation
- A policy must be adapted to a new operational context

Policy tuning is expected and normal. Treating policy as fixed often leads to brittle or misaligned decisions.

---

## Prerequisites

Before tuning a policy, ensure that:

- An evaluation has been run and preserved  
  (see **[Run an Evaluation](run-an-evaluation/)**)
- Evaluation metrics and parameters are understood  
  (see **[Metrics](../metrics/)**)
- The decision context is clearly framed  
  (see **[Problem Framing](../concepts/problem-framing/)**)
- Governance expectations are clear  
  (see **[Governance](../concepts/governance/)**)

Policy tuning without these prerequisites risks optimizing the wrong objective.

---

## Step 1: Clarify the decision objective

Begin by stating the decision objective explicitly.

Examples include:

- Minimizing downside risk
- Favoring stability over responsiveness
- Penalizing specific failure modes
- Balancing competing operational costs

Objectives should be articulated in plain language before being encoded into policy parameters.

---

## Step 2: Identify tunable policy parameters

Policies often expose parameters that control how evaluation outputs are interpreted.

Examples include:

- Relative weighting of different error types
- Thresholds for acceptable performance
- Penalties applied under specific conditions
- Preferences applied during tie-breaking

These parameters represent **policy levers**, not model parameters.

---

## Step 3: Explore policy sensitivity

Before committing to a tuned policy, explore how decisions change as parameters vary.

Sensitivity exploration may involve:

- Sweeping parameter ranges
- Comparing selections under different settings
- Identifying regions of instability or indifference
- Observing tradeoffs across segments or scenarios

Sensitivity analysis helps distinguish robust policies from fragile ones.

---

## Step 4: Apply readiness considerations

Policy tuning should account for readiness, not just evaluation scores.

Consider:

- Stability across time or entities
- Behavior under uncertainty or sparse data
- Consistency with operational constraints

Readiness adjustments may modify or contextualize evaluation outputs prior to decisioning. For conceptual grounding, see **[Readiness and RAL](../concepts/readiness-and-ral/)**.

---

## Step 5: Select and document the tuned policy

Once a policy configuration is selected:

- Record parameter values explicitly
- Document the rationale for choices
- Note tradeoffs that were accepted
- Identify conditions under which retuning may be required

Documentation is essential for governance and future review.

---

## Step 6: Validate policy outcomes

Validation ensures that the tuned policy behaves as intended.

Validation may include:

- Replaying historical evaluations
- Stress-testing under edge scenarios
- Verifying stability across segments
- Confirming alignment with stated objectives

Policy validation focuses on **decision outcomes**, not metric optimization.

---

## Governance considerations

Policy tuning encodes organizational intent and must therefore be governed.

Good governance practices include:

- Versioning policy configurations
- Avoiding silent parameter changes
- Preserving historical policy states
- Linking decisions to the policy in effect at the time

Governance ensures that policy evolution remains transparent and auditable. See **[Governance](../concepts/governance/)** for details.

---

## How policy tuning fits into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Evaluation measures system behavior  
  (see **[Run an Evaluation](run-an-evaluation/)**)
- Readiness contextualizes evaluation outputs  
  (see **[Readiness and RAL](../concepts/readiness-and-ral/)**)
- Policy tuning defines how tradeoffs are resolved
- Decisioning applies tuned policies consistently
- Governance ensures traceability across time

Policy tuning is the bridge between measurement and action.

---

## Where to go next

- Review **[Optimization](../optimization/)** for selection and tuning mechanisms
- Revisit **[Asymmetric Cost](../concepts/asymmetric-cost/)** to reassess tradeoffs
- Consult **[Papers](../papers/)** for formal policy and framework definitions

Tuning a policy is not about finding a single “best” setting. It is about making tradeoffs explicit, defensible, and aligned with the decision context Electric Barometer is designed to support.
