# Optimization

The Optimization section describes how evaluation outputs are translated into governed, decision-ready outcomes within the Electric Barometer framework. It defines how tradeoffs are explored, assumptions are tuned, ambiguity is resolved, and selections are made deliberately.

Optimization does not change forecasts or metrics. It operates **above evaluation**, encoding preference, risk posture, and intent explicitly.

---

## What optimization does

Within Electric Barometer, optimization:

- Explores tradeoffs surfaced by evaluation
- Makes asymmetric cost assumptions explicit
- Applies policy to evaluation outputs
- Resolves ambiguity through tie-breaking
- Produces decision-ready selections
- Preserves traceability and governance

Optimization turns *measurement* into *actionable alignment*.

---

## What optimization is not

Optimization is **not**:

- Model training or retraining
- Metric definition or computation
- Implicit ranking by numerical noise
- Automated decision-making without policy
- A replacement for governance

For role clarity, see **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## Position in the lifecycle

Optimization sits between evaluation and decisioning.

A simplified lifecycle:

1. Forecasting systems generate outputs
2. Metrics evaluate behavior
3. Optimization explores tradeoffs and applies policy
4. Decisions are made deliberately and governed

Optimization ensures that decisions reflect intent rather than accident.

---

## Core components of optimization

The Optimization section is organized around four core components.

### Cost ratio configuration

Cost ratios encode asymmetric cost assumptions that influence evaluation outcomes.

- Defines relative penalties for different error types
- Treated as a policy parameter, not a fact
- Tuned explicitly and governed

See **[Cost Ratio Optimization](cost-ratio/)**.

---

### Policies

Policies define how evaluation outputs are interpreted and acted upon.

- Combine metrics and constraints
- Encode preference and risk posture
- Separate measurement from decision rules

See **[Policies](policies/)**.

---

### Tuning

Tuning refines policy parameters and assumptions to align outcomes with the decision context.

- Adjusts cost ratios and thresholds
- Explores sensitivity and robustness
- Commits to explicit configurations

See **[Tuning](tuning/)** and **[Tune a Policy](../guides/tune-a-policy/)**.

---

### Tie-breaking

Tie-breaking resolves ambiguity when evaluation does not produce a clear winner.

- Applies explicit secondary criteria
- Avoids false precision
- Ensures consistent outcomes under noise

See **[Tie-Breaking](tie-breaking/)**.

---

## Relationship to metrics

Metrics measure behavior; optimization decides how to use those measurements.

For example:

- **[CWSL](../metrics/cwsl/)** measures cost-aligned loss
- Optimization determines acceptable ranges, priorities, and tradeoffs
- Policies and tuning decide how CWSL influences selection

This separation keeps metrics reusable and decisions adaptable.

---

## Relationship to readiness and RAL

Optimization commonly operates on **readiness-adjusted outputs** rather than raw metric values.

Readiness considerations may:

- Penalize instability or uncertainty
- Constrain acceptable solutions
- Shape tuning and tie-breaking rules

See **[Readiness and RAL](../concepts/readiness-and-ral/)** for conceptual grounding.

---

## Governance and traceability

Optimization directly influences decisions and must therefore be governed.

Governance ensures that:

- Assumptions are explicit
- Changes are intentional and documented
- Historical decisions remain interpretable
- Outcomes are auditable

For governance principles, see **[Governance](../concepts/governance/)**.

---

## When to engage optimization

Engage optimization when:

- Evaluation surfaces meaningful tradeoffs
- Asymmetric cost assumptions matter
- Multiple systems perform similarly
- Decision context or risk tolerance changes
- Sensitivity to assumptions must be understood

Optimization is expected, not exceptional.

---

## Where to go next

- Start with **[Cost Ratio Optimization](cost-ratio/)** for asymmetric weighting
- Read **[Policies](policies/)** to understand decision rules
- Use **[Tuning](tuning/)** to refine assumptions
- Apply **[Tie-Breaking](tie-breaking/)** to resolve ambiguity
- Revisit **[Metrics](../metrics/)** for measurement context

Optimization is where Electric Barometer turns evaluation into governed decisions. It exists to ensure that tradeoffs are handled deliberately, transparently, and defensibly.
