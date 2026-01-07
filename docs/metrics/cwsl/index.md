# Cost-Weighted Service Loss (CWSL)

Cost-Weighted Service Loss (CWSL) is a core evaluation metric in the Electric Barometer framework. It is designed to measure forecasting system behavior under **asymmetric cost**, where different error directions incur different operational consequences.

CWSL provides a cost-aligned view of forecast error that complements traditional accuracy metrics and supports governed, decision-aware evaluation.

---

## Why CWSL exists

Most common accuracy metrics treat forecast errors as symmetric and interchangeable. In operational environments, this assumption rarely holds.

CWSL exists to:

- Make asymmetric cost explicit
- Preserve information about error direction
- Surface operational risk that symmetric metrics obscure
- Support evaluation under clearly stated assumptions

CWSL is a **measurement tool**, not a decision rule. It informs decisioning without replacing policy or governance.

For conceptual grounding, see **[Asymmetric Cost](../../concepts/asymmetric-cost/)** and **[Evaluation vs Decisioning](../../concepts/evaluation-vs-decisioning/)**.

---

## What CWSL measures

At a high level, CWSL measures:

- Forecast error magnitude
- Weighted by the direction of the error
- Aggregated across a defined evaluation scope

The resulting value represents expected loss *under explicit cost-weighting assumptions*.

CWSL does not assume universal cost ratios. All weighting choices are contextual and must be made explicitly.

---

## How to navigate the CWSL documentation

The CWSL documentation is organized by intent:

- **[Definition](definition/)**  
  Formal definition of CWSL, including structure, scope, and encoded assumptions.

- **[Interpretation](interpretation/)**  
  Guidance on how to read and compare CWSL values responsibly.

- **[Examples](examples/)**  
  Illustrative scenarios demonstrating how CWSL behaves under different conditions.

- **[Assumptions](assumptions/)**  
  Detailed discussion of the assumptions CWSL encodes and their implications.

Each page focuses on a distinct aspect of understanding CWSL. Together, they form a complete, non-overlapping explanation.

---

## What CWSL is not

CWSL does **not**:

- Select forecasting systems
- Encode organizational policy
- Resolve tradeoffs automatically
- Guarantee operational readiness
- Replace governance or decision logic

Those responsibilities belong to readiness, policy tuning, and decisioning layers.

See **[Readiness and RAL](../../concepts/readiness-and-ral/)** and **[Tune a Policy](../../guides/tune-a-policy/)** for how CWSL outputs are used downstream.

---

## How CWSL fits into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Forecasting systems generate candidate outputs
- CWSL measures cost-aligned error behavior
- Evaluation compares systems under explicit assumptions
- Readiness contextualizes evaluation results
- Policy tuning defines how tradeoffs are resolved
- Decisioning applies governed rules
- Releases preserve reproducibility

CWSL is foundational, but not exclusive. It exemplifies how Electric Barometer treats metrics as explicit, interpretable lenses rather than opaque scores.

---

## When to use CWSL

CWSL is appropriate when:

- Error direction has unequal consequences
- Operational risk matters more than average accuracy
- Evaluation must reflect cost asymmetry explicitly
- Tradeoffs between stability and responsiveness are relevant

In contexts where errors are truly symmetric and consequences are minimal, simpler metrics may suffice.

---

## Where to go next

- Start with **[Definition](definition/)** if you are new to CWSL
- Read **[Interpretation](interpretation/)** to understand how to compare results
- Explore **[Examples](examples/)** to build intuition
- Review **[Assumptions](assumptions/)** to understand what CWSL encodes
- See **[Metrics](../)** for other evaluation lenses
- Consult **[Papers](../../papers/)** for formal mathematical treatments

CWSL is the reference metric for asymmetric cost in Electric Barometer. It demonstrates how evaluation can be made explicit, interpretable, and aligned with real-world operational risk.
