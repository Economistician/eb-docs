# Cost-Weighted Service Loss (CWSL): Examples

This page provides illustrative examples of how Cost-Weighted Service Loss (CWSL) behaves under different forecasting scenarios. The goal is to build intuition for how asymmetric cost weighting affects evaluation outcomes, not to prescribe specific weights or policies.

All examples assume that evaluation is performed prior to readiness adjustment or decisioning.

---

## Example 1: Symmetric error, asymmetric cost

Consider two forecasts with identical absolute error magnitudes but opposite directions.

- Forecast A under-forecasts demand by 10 units
- Forecast B over-forecasts demand by 10 units

Under symmetric accuracy metrics, both forecasts receive identical scores.

Under CWSL:

- If under-forecasting carries a higher cost weight than over-forecasting,
  Forecast A incurs greater loss.
- If over-forecasting carries a higher cost weight, Forecast B incurs greater loss.

CWSL distinguishes these cases explicitly, even though the error magnitudes are the same.

---

## Example 2: Two systems with similar accuracy

Suppose two forecasting systems exhibit similar performance under MAE.

- System X produces small errors but frequently under-forecasts
- System Y produces slightly larger errors but tends to over-forecast

If under-forecasting is more costly in the operational context, CWSL may rank System Y as preferable despite its slightly worse symmetric accuracy.

This example illustrates how CWSL can reverse rankings produced by traditional accuracy metrics when error direction matters.

---

## Example 3: Sensitivity to cost weights

CWSL outcomes depend on the chosen cost weights.

Consider a single forecasting system evaluated under different cost weight configurations:

- Configuration 1 heavily penalizes under-forecasting
- Configuration 2 treats both error directions more evenly

The same forecast errors may yield substantially different CWSL values under these configurations.

This sensitivity is intentional. It reflects the fact that cost assumptions are contextual and must be made explicit rather than hidden inside the metric.

---

## Example 4: Aggregation across time

CWSL aggregates per-observation losses across an evaluation window.

A forecasting system may:

- Perform well on average
- Incur occasional large losses during specific periods

CWSL captures the cumulative impact of these losses. A system that avoids rare but costly failures may outperform a system with lower average error but higher downside exposure.

This behavior makes CWSL useful for identifying risk-sensitive differences between systems.

---

## Example 5: Segment-level behavior

Consider a forecasting system evaluated across multiple segments (e.g., locations, products, or time bands).

- In some segments, the system over-forecasts
- In others, it under-forecasts

CWSL can be computed and inspected at the segment level to reveal where cost-aligned losses concentrate.

This enables evaluators to distinguish between globally acceptable behavior and localized risk, without collapsing everything into a single score prematurely.

---

## Example 6: Comparing stability versus responsiveness

Two forecasting systems may differ in volatility:

- System A responds aggressively to recent changes
- System B is more stable but slower to adapt

If aggressive responses increase the likelihood of costly under-forecasting during spikes, CWSL may favor the more stable system, even if its point forecasts lag temporarily.

This highlights how CWSL interacts with system behavior, not just point accuracy.

---

## What these examples illustrate

Across these examples, several patterns emerge:

- Error direction materially affects loss
- Cost assumptions shape evaluation outcomes
- Systems with similar accuracy can have very different CWSL profiles
- Aggregation and segmentation matter for interpretation
- CWSL surfaces risk that symmetric metrics may hide

These behaviors are features, not flaws. They reflect the realities of operational decision-making under asymmetric cost.

---

## What examples do not determine

These examples do not determine:

- Which cost weights are “correct”
- Which system should be selected
- How tradeoffs should be resolved
- What policy should be applied

Those choices belong to readiness, policy tuning, and governance layers.

---

## How to use CWSL examples responsibly

Use examples like these to:

- Build intuition about metric behavior
- Communicate tradeoffs to stakeholders
- Identify evaluation sensitivity
- Guide further analysis

Do not treat examples as prescriptions. CWSL is a measurement tool whose meaning depends on context.

---

## Where to go next

- Review **[Interpretation](interpretation/)** to understand how to read CWSL values
- Examine **[Assumptions](assumptions/)** to see what CWSL encodes
- Revisit **[Evaluation vs Decisioning](../../concepts/evaluation-vs-decisioning/)** for role clarity
- Consult **[Readiness and RAL](../../concepts/readiness-and-ral/)** for decision-facing adjustments

CWSL examples are meant to sharpen understanding, not to decide outcomes. They illustrate why asymmetric cost must be measured explicitly in operational forecasting systems.
