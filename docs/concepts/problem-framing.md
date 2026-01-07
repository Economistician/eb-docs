# Problem Framing in Forecasting Systems

Many failures in forecasting systems do not originate from poor models or insufficient data. They arise earlier, at the level of **problem framing**. When a forecasting problem is framed incorrectly, even technically strong solutions can lead to misleading evaluations and suboptimal decisions.

Electric Barometer treats problem framing as a first-class concern, recognizing that how a problem is defined determines what is measured, optimized, and ultimately acted upon.

---

## Forecasting is not the problem

In operational environments, forecasting is rarely the end goal. Forecasts exist to support decisions about production, allocation, staffing, inventory, or service.

When forecasting is treated as the primary objective:

- Accuracy becomes the dominant success criterion.
- Evaluation focuses on statistical error rather than operational impact.
- Decisions are implicitly delegated to whatever metric performs best.

This framing obscures the fact that forecasting is an **input** to a broader decision system, not the decision itself.

---

## The difference between prediction and decision problems

A prediction problem asks:

> *What is the most likely future outcome?*

A decision problem asks:

> *What action should be taken, given uncertainty about the future?*

These are related but distinct questions. Prediction focuses on estimating outcomes, while decision-making focuses on choosing actions under uncertainty and constraint.

When prediction problems are substituted for decision problems, evaluation criteria drift away from what actually matters operationally.

---

## Objective mismatch and hidden assumptions

Problem framing determines the objective being optimized. If the framing is incomplete or implicit, objectives become misaligned with real-world goals.

Common symptoms of objective mismatch include:

- Optimizing accuracy when cost or risk is the true concern
- Treating all errors as equivalent despite asymmetric consequences
- Ignoring downstream constraints that limit feasible actions
- Assuming that the best-performing model should always be selected

These mismatches often go unnoticed because they are embedded in the framing rather than the implementation.

---

## Forecast granularity and decision relevance

The appropriate granularity of a forecast depends on how it will be used.

Poor framing can occur when:

- Forecasts are generated at a level that does not align with decision cadence
- Temporal resolution exceeds what decisions can realistically act upon
- Aggregation hides variability that matters for risk
- Disaggregation introduces noise without decision value

Framing requires clarity about *who* makes decisions, *when* they are made, and *what* actions they enable.

---

## Constraints define the real problem

Operational decisions are constrained by factors such as:

- Capacity limits
- Lead times
- Resource availability
- Regulatory or contractual rules
- Organizational risk tolerance

A forecasting problem framed without these constraints is incomplete. It may produce accurate predictions that cannot be acted upon or evaluated meaningfully.

Electric Barometer encourages framing problems in terms of **feasible decisions**, not just predicted outcomes.

---

## From optimization to tradeoff management

Many forecasting problems are framed as optimization tasks: minimize error, maximize accuracy, or improve a single score.

In reality, operational systems involve tradeoffs:

- Cost versus service level
- Stability versus responsiveness
- Efficiency versus robustness
- Short-term gain versus long-term risk

Proper problem framing acknowledges that not all objectives can be optimized simultaneously. The goal shifts from finding a single optimum to managing tradeoffs explicitly.

---

## Why problem framing precedes evaluation

Evaluation metrics encode assumptions about what matters. If the problem is framed incorrectly, evaluation will faithfully optimize the wrong objective.

This creates a false sense of rigor: metrics improve, dashboards look better, but decisions do not.

By clarifying the problem framing first—objectives, constraints, tradeoffs, and decision context—evaluation can be designed to support meaningful decisions rather than abstract performance goals.

---

## How Electric Barometer approaches problem framing

Electric Barometer emphasizes problem framing as a prerequisite to evaluation and decisioning.

The framework encourages practitioners to:

- Define the decision being supported, not just the forecast being produced
- Identify asymmetric costs and contextual tradeoffs
- Make constraints and policies explicit
- Separate measurement from choice
- Treat forecasting systems as components of a larger decision process

By anchoring forecasting work in correctly framed decision problems, Electric Barometer helps ensure that technical effort translates into operational value.

Problem framing is not a preliminary step to be rushed or assumed. It is the foundation upon which effective evaluation, governance, and decision-making are built.
