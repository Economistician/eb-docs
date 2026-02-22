# Start Here

Welcome to Electric Barometer.

This section is your entry point into the Electric Barometer framework. It is designed to orient you quickly, establish the correct mental model, and route you to the right parts of the documentation based on your goals.

Electric Barometer is not a single library or model. It is a **decision-aware evaluation and governance framework** for forecasting systems operating under asymmetric cost and uncertainty.

---

## What Electric Barometer helps you do

Electric Barometer helps you:

- Evaluate forecasting systems under asymmetric cost
- Make tradeoffs explicit rather than implicit
- Separate measurement from decision-making
- Govern how forecasts influence operational decisions
- Maintain reproducibility and explainability over time

If you have ever had a forecast that was “accurate” but still led to poor outcomes, Electric Barometer is designed for that situation.

---

## How this documentation is organized

This documentation is organized by **intent**, not by repository or codebase.

You will encounter five major sections:

- **Concepts** — the foundational ideas and vocabulary
  (why the system is structured the way it is)

- **Guides** — task-oriented instructions and workflows
  (how to do common things)

- **Metrics** — evaluation lenses and interpretation
  (what is being measured)

- **Optimization** — policy, tuning, and decision rules
  (how tradeoffs are resolved)

- **Papers** — formal definitions and theoretical foundations
  (the mathematical and research grounding)

Each section builds on the previous ones, but they are designed to be navigated independently as needed.

---

## Where to begin (recommended paths)

Choose the path that best matches your goal.

### If you are new to Electric Barometer
Start with:
- **[Quickstart](quickstart/)** — a guided, practical orientation
- **[Concepts](../concepts/)** — the core mental model

### If you want to understand the system philosophy
Go to:
- **[Concepts](../concepts/)**, starting with
  **[Problem Framing](../concepts/problem-framing/)** and
  **[Asymmetric Cost](../concepts/asymmetric-cost/)**

### If you want to run evaluations or contribute
Begin with:
- **[Guides](../guides/)**
  especially **[Run an Evaluation](../guides/run-an-evaluation/)**

### If you are interested in metrics
Explore:
- **[Metrics](../metrics/)**
  including **[Cost-Weighted Service Loss (CWSL)](../metrics/cwsl/)**

### If you are defining or tuning decision logic
See:
- **[Optimization](../optimization/)**
  including **[Policies](../optimization/policies/)** and
  **[Cost Ratio Optimization](../optimization/cost-ratio/)**

---

## What Electric Barometer is not

To avoid confusion, Electric Barometer is **not**:

- A forecasting model
- A single metric or loss function
- An automated decision engine
- A replacement for domain judgment

It is a framework for making forecasting-driven decisions **explicit, governed, and defensible**.

---

## A simple mental model

At a high level, Electric Barometer follows this sequence:

1. Frame the decision problem
2. Evaluate forecasting system behavior
3. Apply readiness considerations
4. Tune policy and cost assumptions
5. Make governed decisions

This separation is intentional. Each step has a different purpose and set of responsibilities.

---

## Understanding the ecosystem

Electric Barometer is implemented as an ecosystem of repositories, each with a focused responsibility.

To see how everything fits together, read:
- **[Ecosystem Map](ecosystem-map/)**

That page explains how documentation, features, metrics, optimization, integration, and research relate to one another.

---

## What to read next

If you are unsure where to go next, the safest progression is:

1. **[Quickstart](quickstart/)**
2. **[Concepts](../concepts/)**
3. **[Guides](../guides/)**
4. **[Metrics](../metrics/)**
5. **[Optimization](../optimization/)**

Each section deepens understanding without requiring you to jump ahead prematurely.

---

Electric Barometer rewards careful thinking and explicit assumptions.
Start here, move deliberately, and let evaluation inform decisions rather than replace them.
