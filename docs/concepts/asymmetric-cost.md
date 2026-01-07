# Asymmetric Cost in Forecasting

In many operational forecasting problems, not all errors are equal. A forecast that is too low can have consequences that are fundamentally different from a forecast that is too high, even when the magnitude of the error is the same. This imbalance is known as **asymmetric cost**, and it is one of the core motivations for the Electric Barometer framework.

Traditional forecasting evaluation often assumes that errors are symmetric and interchangeable. Electric Barometer rejects this assumption and treats cost asymmetry as a first-class design concern.

---

## The limitation of symmetric accuracy

Most common accuracy metrics—such as mean absolute error (MAE), mean squared error (MSE), or root mean squared error (RMSE)—implicitly assume that over-forecasting and under-forecasting are equally undesirable.

Under this assumption:

- A forecast that overshoots demand by 10 units is treated the same as one that undershoots by 10 units.
- Errors are evaluated purely by magnitude, not by direction.
- Operational consequences are abstracted away from the evaluation process.

While this assumption simplifies analysis, it often fails in real-world operational systems, where the *direction* of an error can matter more than its size.

---

## Directional error and operational consequence

In operational settings, forecast errors are rarely neutral. The same numerical deviation can lead to very different outcomes depending on its direction.

Examples include:

- Under-forecasting demand leading to stockouts, missed revenue, or service degradation.
- Over-forecasting demand leading to waste, excess inventory, or unnecessary labor.
- Forecasting too late versus too early in time-sensitive processes.

These outcomes are not symmetric, and they are not interchangeable. Treating them as such obscures the true risk profile of a forecasting system.

---

## Underbuild vs overbuild: why sign matters

Asymmetric cost is often most visible in **underbuild versus overbuild** scenarios.

An underbuild typically represents a failure to meet realized demand. Its consequences may include lost sales, customer dissatisfaction, or operational bottlenecks. An overbuild, by contrast, may result in inefficiency, waste, or opportunity cost, but not necessarily lost demand.

In these cases:

- The *sign* of the forecast error encodes meaning.
- The operational penalty is not proportional to absolute error alone.
- Two forecasts with identical accuracy can have very different real-world impact.

Ignoring this distinction can lead to systematically poor decisions, even when accuracy metrics appear strong.

---

## Cost is contextual, not universal

Importantly, asymmetric cost is not a universal constant. It depends on context.

The relative cost of under-forecasting versus over-forecasting varies by:

- Industry and domain
- Product or resource type
- Time horizon and planning window
- Organizational priorities and risk tolerance

There is no single “correct” cost ratio that applies across all systems. Any attempt to encode asymmetric cost must therefore be explicit, configurable, and grounded in the operational realities of the decision being made.

---

## From accuracy to decision regret

When costs are asymmetric, accuracy alone is an insufficient proxy for decision quality.

What matters instead is **decision regret**: the realized consequence of a decision made under uncertainty, relative to an alternative decision that could have been made with perfect information.

This reframing shifts evaluation away from abstract prediction error and toward the outcomes that decisions actually produce. It emphasizes:

- The downstream effects of forecast-driven actions
- The tradeoffs embedded in operational choices
- The alignment between evaluation criteria and real-world objectives

Asymmetric cost makes this shift unavoidable.

---

## Why asymmetric cost requires explicit policy

Because cost asymmetry is contextual and directional, it cannot be handled implicitly or assumed away.

Any system that takes asymmetric cost seriously must make explicit choices about:

- How different types of errors are weighted
- Which risks are prioritized over others
- How tradeoffs are resolved when no option is strictly optimal

These choices are not purely technical. They encode policy, preference, and risk posture. Treating them as hidden implementation details undermines transparency and accountability.

---

## How Electric Barometer approaches asymmetric cost

Electric Barometer treats asymmetric cost as a foundational concept rather than an afterthought.

The framework:

- Separates forecasting from evaluation and decision policy
- Makes cost assumptions explicit rather than implicit
- Supports evaluation measures that distinguish error direction
- Encourages reproducible, auditable decision criteria

By doing so, Electric Barometer enables organizations to align forecasting systems with the operational realities they are meant to support, rather than optimizing for abstract notions of accuracy that may not reflect true risk.

Asymmetric cost is not an edge case—it is the norm in operational decision-making. Electric Barometer is designed accordingly.
