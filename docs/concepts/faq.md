# Frequently Asked Questions (FAQ)

This section addresses common questions, concerns, and misconceptions about the
Electric Barometer framework. Many of these arise naturally when introducing
asymmetric evaluation, cost-aware metrics, and readiness-based forecast selection
into operational environments.

The intent here is not marketing, but clarity.

---

## Is Electric Barometer subjective?

**No.** Electric Barometer does not introduce subjectivity into forecast evaluation.
It makes *existing operational asymmetries explicit*.

All production systems already operate under asymmetric cost structures:
- Under-production and over-production are not equally harmful
- Missed demand and wasted capacity do not have equal consequences
- Forecast errors carry different operational impacts depending on direction,
  magnitude, timing, and context

Traditional symmetric error metrics (e.g., MAE, RMSE) implicitly assume these
costs are equal. Electric Barometer replaces this implicit assumption with
*explicit, parameterized structure*.

Subjectivity only enters when an organization defines:
- Cost ratios
- Tolerance bands
- Readiness thresholds

These are not opinions — they are governance decisions that already exist,
often undocumented.

Electric Barometer formalizes them.

---

## Is this just cost modeling?

**No.** Cost modeling is explaining *outcomes after the fact*.
Electric Barometer is about *forecast selection before deployment*.

Key differences:

| Cost Modeling | Electric Barometer |
|--------------|--------------------|
| Retrospective | Prospective |
| Outcome-focused | Decision-focused |
| Explains loss | Guides selection |
| Often siloed | Integrated into evaluation |

Electric Barometer metrics (e.g., CWSL, readiness surfaces) are not estimating
financial loss in dollars. They are measuring **operational risk exposure**
under asymmetric conditions.

This distinction is intentional and critical.

---

## Does Electric Barometer replace accuracy metrics?

**No.** Accuracy metrics remain necessary — they are simply insufficient on their own.

Electric Barometer:
- **Uses accuracy metrics** as inputs
- **Contextualizes them** within asymmetric cost structures
- **Prevents misleading conclusions** when symmetric error hides operational risk

In practice:
- Accuracy tells you *how close*
- Electric Barometer tells you *how safe*

Both matter. Only one informs deployment decisions.

---

## Is this framework model-specific?

**No.** Electric Barometer is explicitly model-agnostic.

It applies equally to:
- Statistical models
- Machine learning models
- Deep learning architectures
- Ensemble systems
- Vendor forecasts
- Human-in-the-loop adjustments

The framework evaluates **forecast behavior**, not model internals.

This allows:
- Fair comparison across heterogeneous model classes
- Governance over vendor vs in-house forecasts
- Transparent selection logic independent of implementation details

---

## Does this framework assume perfect cost estimates?

**No.** Electric Barometer is designed to work under *imperfect knowledge*.

Operational reality:
- Exact costs are often unknown
- Relative costs are usually understood
- Directional asymmetry is almost always known

Electric Barometer supports:
- Ratio-based costs
- Sensitivity analysis
- Robust decision boundaries rather than point estimates

In many cases, **knowing that under-forecasting is worse than over-forecasting**
is enough to materially improve selection decisions.

---

## How is this different from weighted loss functions?

Weighted loss functions optimize a **single model during training**.

Electric Barometer evaluates **multiple candidate forecasts during selection**.

Key distinction:
- Loss functions shape *how a model learns*
- Electric Barometer governs *which forecast is deployed*

These operate at different stages of the lifecycle and are complementary,
not redundant.

---

## Is Electric Barometer only useful for supply chain or QSR?

No. Those domains motivated the framework, but the structure generalizes.

Applicable domains include:
- Demand forecasting
- Capacity planning
- Labor scheduling
- Energy load forecasting
- Inventory management
- Infrastructure provisioning
- Healthcare operations
- Any system with asymmetric error consequences

If errors are not equally costly in both directions, Electric Barometer applies.

---

## Does this framework introduce more complexity than necessary?

It introduces **only the complexity that already exists**.

Ignoring asymmetry does not remove it — it merely hides it.

Electric Barometer:
- Makes tradeoffs visible
- Makes governance explicit
- Reduces downstream surprises
- Improves auditability and explainability

In operational systems, *unmodeled simplicity is risk*.

---

## Can two organizations use Electric Barometer and reach different conclusions?

Yes — and that is correct.

Different organizations:
- Face different cost structures
- Have different tolerance for risk
- Operate under different constraints

Electric Barometer ensures that:
- Decisions are internally consistent
- Assumptions are documented
- Differences are explainable

The framework standardizes **how decisions are made**, not **what decisions must be**.

---

## Is Electric Barometer a replacement for human judgment?

No. It is a **decision-support framework**, not an automation mandate.

Human judgment:
- Defines cost structures
- Sets tolerance bands
- Interprets readiness signals
- Makes final deployment calls

Electric Barometer ensures those judgments are:
- Grounded in data
- Reproducible
- Defensible
- Auditable

---

## What problem does Electric Barometer ultimately solve?

It closes the gap between:
> *Forecast accuracy* and *operational safety*

By reframing evaluation around **readiness**, Electric Barometer enables
organizations to deploy forecasts that are not merely accurate, but appropriate
for the operational conditions they will face.

That distinction is the core contribution of the framework.

---

## Where should I go next?

- Read **How Electric Barometer Works** for a step-by-step conceptual flow
- Review the **Glossary** for precise terminology
- Explore package-specific documentation for implementation details

---