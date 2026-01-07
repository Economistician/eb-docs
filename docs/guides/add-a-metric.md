# Add a Metric

Metrics define how forecasting systems are evaluated. In Electric Barometer, metrics are not treated as generic accuracy scores, but as **decision-facing measurement tools** designed to surface behavior, tradeoffs, and risk under explicit assumptions.

This guide describes the process for adding a new metric in a way that is conceptually sound, reproducible, and compatible with the Electric Barometer ecosystem.

---

## When you should add a metric

Add a new metric when:

- Existing metrics do not capture an important aspect of system behavior
- A specific tradeoff or risk dimension needs to be measured explicitly
- Operational cost or consequence cannot be expressed through current measures
- Evaluation requirements vary meaningfully by context or use case
- You need to formalize a concept that is currently implicit or ad hoc

If a metric only marginally improves an existing measure or duplicates behavior under a different name, it may not belong as a first-class metric.

---

## Conceptual requirements

Before implementing a new metric, clarify the following:

- **Purpose** — What behavior does the metric measure?
- **Decision relevance** — What decisions does it inform?
- **Assumptions** — What cost, symmetry, or context assumptions does it encode?
- **Scope** — Is it general-purpose or domain-specific?
- **Comparability** — Can it be meaningfully compared across systems or time?

Metrics should answer a clear question. If that question cannot be stated plainly, the metric is likely underspecified.

---

## Metrics are measurements, not decisions

In Electric Barometer, metrics serve evaluation—not decisioning.

A metric should:

- Measure behavior under explicit assumptions
- Produce reproducible, inspectable outputs
- Support comparison across alternatives

A metric should not:

- Encode implicit policy choices
- Automatically select winners
- Obscure tradeoffs behind a single score

Decisioning logic belongs in policy and optimization layers, not inside metrics.

---

## Where metrics live

Metrics are implemented and documented in the **metrics repository**, which is the source of truth for:

- metric definitions
- assumptions and parameters
- expected inputs and outputs
- implementation details

The Electric Barometer documentation site explains **why and when** metrics are used, while the metrics repository documents **how** they are implemented.

---

## Step 1: Define the metric formally

Every metric requires a clear definition.

A complete definition specifies:

- What is being measured
- What inputs are required
- How outputs are computed
- What assumptions are encoded
- What higher or lower values represent

Formal definitions may be mathematical, procedural, or both, but they must be unambiguous.

---

## Step 2: Identify encoded assumptions

Metrics always encode assumptions, whether explicit or implicit.

Examples include:

- Symmetric versus asymmetric treatment of error
- Relative weighting of different outcomes
- Aggregation across entities or time
- Sensitivity to scale or variance

Identifying these assumptions early prevents misuse and misinterpretation later.

---

## Step 3: Implement the metric

Implement the metric according to the conventions of the metrics repository.

Guidelines:

- Keep logic transparent and readable
- Avoid embedding policy decisions
- Make parameters explicit and configurable
- Ensure deterministic behavior

Metrics should be pure functions of their inputs wherever possible.

---

## Step 4: Document interpretation

Metric documentation must explain how to interpret results.

This includes:

- What the metric is sensitive to
- What it is insensitive to
- Common failure modes or edge cases
- How it should be compared across systems

Interpretation guidance is as important as the computation itself.

---

## Step 5: Validate behavior

Validation ensures that the metric behaves as intended.

Validation may include:

- Tests on synthetic or controlled data
- Sensitivity checks across parameter values
- Comparison against known baselines
- Verification under edge conditions

A metric that cannot be validated should not be relied upon for evaluation.

---

## Step 6: Make the metric discoverable

Once implemented and validated:

- Ensure it is included in the metrics documentation
- Add examples where appropriate
- Reference it from conceptual or workflow guides if it represents a common pattern

Discoverability encourages consistent usage and reduces the proliferation of redundant measures.

---

## Governance considerations

Metrics influence decisions indirectly by shaping evaluation outcomes. As such, they require governance.

Good governance practices include:

- Versioning changes to metric definitions
- Avoiding silent behavior changes
- Documenting rationale for new metrics or modifications
- Preserving comparability over time where possible

Metrics should evolve deliberately, not opportunistically.

---

## How metrics fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Metrics provide structured measurements of forecasting system behavior
- Evaluation aggregates and compares those measurements
- Readiness and policy layers contextualize metric outputs
- Decisioning applies explicit rules to select or tune systems
- Governance ensures the process remains transparent and reproducible

Metrics inform decisions, but they do not make them.

---

## Where to go next

- See **Packages → Metrics** for available metrics and implementation details
- Read **Concepts → Asymmetric Cost** to understand why many metrics are directional
- Follow **Workflows** to see how metrics are used in evaluation and selection

Adding a metric is not just a technical task. It is a statement about what behavior matters and why. In Electric Barometer, that statement is made explicitly.
