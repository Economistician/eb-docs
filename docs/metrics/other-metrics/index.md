# Other Metrics

This section documents the **supporting readiness diagnostics** used within the Electric
Barometer framework, excluding Cost-Weighted Service Loss (CWSL), which is documented
separately.

These metrics do not compete with CWSL. Instead, they **decompose readiness behavior**
along dimensions that CWSL alone cannot isolate, such as reliability, severity, tolerance
responsiveness, and structural failure modes.

---

## Role of supporting metrics

Electric Barometer does not rely on a single scalar metric to characterize forecast readiness.

Operational failure modes are multidimensional:
- some systems fail *often* but shallowly,
- others fail *rarely* but catastrophically,
- some respond to adjustment,
- others are structurally insensitive.

The metrics in this section exist to **diagnose these patterns explicitly**, rather than forcing
them into a single objective.

---

## Relationship to CWSL

Cost-Weighted Service Loss (CWSL) measures **aggregate, asymmetric cost exposure**.
It answers:

> *How much effective throughput is lost under a declared cost structure?*

The metrics documented here answer complementary questions, such as:

- *How often does the forecast fail to cover demand?*
- *How severe are failures when they occur?*
- *How does behavior change under tolerance or adjustment?*
- *Are failures structural or tunable?*

They are intended to be interpreted **alongside** CWSL, not instead of it.

---

## Metric categories

The metrics in this section fall into four broad categories.

### Reliability metrics

These metrics describe **how often forecasts avoid failure**, independent of magnitude.

Examples include:
- **No–Shortfall Level (NSL)** — frequency of full coverage,
- tolerance-based hit rates (e.g., HR@τ).

Reliability metrics are sensitive to *occurrence*, not *severity*.

---

### Severity metrics

These metrics describe **how bad failures are when they occur**.

Examples include:
- **Underbuild Depth (UD)** — conditional shortfall magnitude.

Severity metrics isolate tail behavior that is obscured by frequency-based measures.

---

### Tolerance and responsiveness metrics

These metrics describe **how forecasts behave under admissible perturbation**, such as:
- changes in tolerance,
- bounded readiness adjustment,
- or cost asymmetry sweeps.

They are used to assess **responsiveness**, not to optimize outcomes.

---

### Structural diagnostics

These diagnostics do not measure performance at all.

Instead, they determine whether:
- evaluation semantics are admissible,
- readiness interventions are structurally meaningful,
- or policy application is valid.

Examples include:
- **Demand Quantization Compatibility (DQC)**,
- **Forecast Primitive Compatibility (FPC)**.

These diagnostics gate interpretation and policy; they are not scored or ranked.

---

## Interpretive boundaries

All metrics documented here share the following properties:

- they are **evaluative**, not prescriptive,
- they rely only on observable quantities,
- they do not imply operational action,
- and they must be interpreted under governed unit semantics.

No metric in this section should be optimized directly.

---

## How these metrics are used

In practice, these metrics are used to:

- explain why two forecasts with similar CWSL behave differently,
- identify structural incompatibility before adjustment or deployment,
- support governance decisions with explicit evidence,
- and communicate readiness risk in operational reviews.

They provide **resolution**, not decisions.

---

## Navigation

Use the pages in this section to understand individual metrics in detail.

For composite readiness evaluation and cost-sensitive analysis, refer to:
- **Cost-Weighted Service Loss (CWSL)**,
- and **Forecast Readiness Score (FRS)**.

---

## Summary

CWSL captures *cost exposure*.  
The metrics in this section explain *why that exposure arises*.

Together, they form a diagnostic stack that supports **defensible readiness evaluation**
without collapsing interpretation into a single number.
