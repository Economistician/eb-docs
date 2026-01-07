# Quickstart

This quickstart provides a practical orientation to the Electric Barometer framework. It explains how to get started conceptually and how to navigate the ecosystem without requiring immediate code-level engagement.

Electric Barometer is not a single library or model. It is a **decision-aware evaluation framework** composed of multiple layers. This guide helps you understand how to approach it correctly from the beginning.

---

## What Electric Barometer is (in one minute)

Electric Barometer is a framework for evaluating and governing forecasting systems in operational environments where:

- Forecast errors have **asymmetric cost**
- Accuracy alone is insufficient
- Tradeoffs must be made explicitly
- Decisions must be reproducible and explainable

It separates forecasting, evaluation, readiness, policy, and decisioning into distinct layers so that assumptions remain visible and controllable.

For the full conceptual foundation, see **[Concepts](../concepts/)**.

---

## What you need to get started

You do not need to install anything to understand or use Electric Barometer conceptually.

To get started meaningfully, you should have:

- A forecasting problem tied to a real decision
- An understanding of how forecast errors translate into consequence
- A willingness to treat assumptions as explicit, not implicit

If you are starting from a purely predictive mindset, begin with **[Problem Framing](../concepts/problem-framing/)**.

---

## Step 1: Frame the decision problem

Before touching models or metrics, clarify:

- What decision the forecast supports
- When the decision is made
- What happens when the forecast is wrong
- Which errors matter more than others

This framing determines everything that follows.

Read **[Problem Framing](../concepts/problem-framing/)** and **[Asymmetric Cost](../concepts/asymmetric-cost/)** before proceeding.

---

## Step 2: Define forecasting systems

Electric Barometer evaluates **forecasting systems**, not isolated models.

A forecasting system includes:

- Feature transforms
- Forecasting logic
- Configuration and parameters
- Execution context

This definition ensures that evaluation reflects real-world usage rather than idealized components.

For contribution patterns, see **[Guides](../guides/)**.

---

## Step 3: Select evaluation metrics

Choose metrics that reflect the behavior you care about.

In asymmetric cost environments, this often includes **Cost-Weighted Service Loss (CWSL)**, which measures cost-aligned forecast error.

See:

- **[Metrics Overview](../metrics/)**
- **[CWSL](../metrics/cwsl/)**

Metrics measure behavior; they do not make decisions.

---

## Step 4: Run an evaluation

Run an evaluation to compare forecasting systems under explicit assumptions.

Evaluation should be:

- Reproducible
- Parameterized
- Preserved for review

For procedural guidance, see **[Run an Evaluation](../guides/run-an-evaluation/)**.

---

## Step 5: Apply readiness and policy

Evaluation outputs are not decision-ready by default.

Before acting:

- Consider readiness and stability  
  (see **[Readiness and RAL](../concepts/readiness-and-ral/)**)
- Apply policy and cost assumptions  
  (see **[Policies](../optimization/policies/)** and **[Cost Ratio Optimization](../optimization/cost-ratio/)**)
- Resolve ambiguity deliberately  
  (see **[Tie-Breaking](../optimization/tie-breaking/)**)

These steps transform measurement into governed choice.

---

## Step 6: Make and govern decisions

Only after readiness and policy are applied should decisions be made.

Decisions should be:

- Traceable to evaluation outputs
- Linked to explicit policies
- Reproducible under the same assumptions
- Governed over time

For the conceptual boundary, revisit **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**.

---

## A minimal mental model

If you remember nothing else, remember this flow:

1. Frame the decision  
2. Evaluate behavior  
3. Apply readiness  
4. Tune policy  
5. Decide deliberately  

Electric Barometer exists to protect this sequence.

---

## Where to go next

Depending on your goal:

- **Understand the philosophy** → **[Concepts](../concepts/)**  
- **Run evaluations** → **[Guides](../guides/)**  
- **Work with metrics** → **[Metrics](../metrics/)**  
- **Define policies** → **[Optimization](../optimization/)**  
- **See the full picture** → **[Ecosystem Map](ecosystem-map/)**  

The Quickstart gets you oriented. The rest of the documentation helps you go deep—without losing clarity.

---

Electric Barometer rewards deliberate thinking. Start slow, make assumptions explicit, and let evaluation inform decisions rather than replace them.
