# Run an Evaluation

Evaluation is the process of measuring and comparing the behavior of forecasting systems under explicit criteria. In Electric Barometer, evaluation is treated as a distinct and reproducible stage that informs decisioning without making decisions itself.

This guide describes how to run an evaluation in a way that is consistent, interpretable, and compatible with the Electric Barometer ecosystem.

---

## What an evaluation is (and is not)

An evaluation answers the question:

> *How do alternative forecasting systems behave under defined measurement criteria?*

An evaluation does **not** answer:

- Which system should be chosen
- What action should be taken
- What policy is preferred

Those questions are resolved later through **[Decisioning](../concepts/evaluation-vs-decisioning/)** and governance.

Keeping this boundary clear is essential for transparency and reproducibility.

---

## When you should run an evaluation

Run an evaluation when:

- Comparing multiple forecasting systems or configurations
- Assessing the impact of new features or transforms
- Introducing or validating new metrics
- Investigating tradeoffs or sensitivity
- Preparing inputs for selection or policy tuning

Evaluations should be repeatable and inspectable, not one-off experiments.

---

## Prerequisites

Before running an evaluation, ensure that:

- Forecasting systems are clearly defined
- Inputs and data slices are fixed and documented
- Metrics and parameters are explicitly selected
- The evaluation window and granularity are appropriate
- Assumptions about cost and context are understood

For conceptual grounding, review **[Problem Framing](../concepts/problem-framing/)** and **[Asymmetric Cost](../concepts/asymmetric-cost/)** before proceeding.

---

## Step 1: Define the evaluation scope

Begin by defining what is being evaluated.

This includes:

- Which forecasting systems or variants are included
- Which entities, segments, or time periods are in scope
- The temporal resolution of evaluation
- Any exclusions or filters applied

The scope should align with the decision context the evaluation is meant to support, as described in **[Concepts](../concepts/)**.

---

## Step 2: Select evaluation metrics

Choose metrics that reflect the behavior you want to measure.

Consider:

- Whether cost asymmetry is relevant
- Which tradeoffs are important to surface
- How metrics aggregate across entities or time
- Whether multiple metrics are required

Metrics should be selected intentionally. If a new measure is required, see **[Add a Metric](add-a-metric/)**.

---

## Step 3: Configure metric parameters

Many metrics require parameters that encode assumptions.

Examples include:

- Relative weighting of different error types
- Thresholds or tolerances
- Normalization or scaling choices

Parameter choices should be explicit and recorded as part of the evaluation configuration. These assumptions often reflect policy and should be consistent with **[Governance](../concepts/governance/)** principles.

---

## Step 4: Execute the evaluation

Run the evaluation using the configured inputs and metrics.

Execution should:

- Be deterministic given the same inputs
- Produce structured outputs
- Capture metadata describing the run
- Avoid modifying source data or forecasts

Evaluation execution is a measurement process, not an optimization step.

---

## Step 5: Inspect evaluation outputs

After execution, review the evaluation results.

Inspection may involve:

- Comparing metrics across systems
- Examining distributions or segment-level behavior
- Identifying tradeoffs or sensitivities
- Checking for anomalies or unexpected patterns

At this stage, evaluation outputs should be interpreted—but **not acted upon**—until readiness and policy considerations are applied.

---

## Step 6: Preserve evaluation artifacts

Evaluation artifacts are essential for governance and reproducibility.

Artifacts may include:

- Metric outputs and summaries
- Configuration files or parameters
- Input identifiers or hashes
- Execution metadata

Preserving these artifacts enables auditability and supports later review under **[Governance](../concepts/governance/)**.

---

## What comes after evaluation

Evaluation produces information, not decisions.

Typical next steps include:

- Applying readiness adjustments  
  (see **[Readiness and RAL](../concepts/readiness-and-ral/)**)
- Comparing systems under explicit policy rules
- Performing sensitivity analysis
- Selecting or tuning systems

These steps belong to decisioning and optimization, not evaluation itself.

---

## Governance considerations

Evaluations influence downstream decisions and must therefore be governed.

Good governance practices include:

- Documenting evaluation intent and scope
- Avoiding ad hoc metric selection
- Preserving historical evaluation results
- Ensuring consistency across comparable runs

For a full discussion, see **[Governance](../concepts/governance/)**.

---

## How evaluation fits into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Feature transforms define system inputs  
  (see **[Add a Feature Transform](add-a-feature-transform/)**)
- Forecasting systems produce candidate outputs
- Evaluation measures behavior under explicit criteria
- Readiness and policy layers contextualize results
- Decisioning selects or tunes systems
- Governance ensures traceability and accountability

Evaluation is the measurement backbone of this lifecycle.

---

## Where to go next

- Add or refine metrics using **[Add a Metric](add-a-metric/)**  
- Apply policy and tuning in **[Optimization](../optimization/)**  
- Review **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)** to reinforce role boundaries

Running an evaluation is not about declaring winners. It is about producing reliable, decision-relevant information. Electric Barometer is designed to make that process explicit and reproducible.
