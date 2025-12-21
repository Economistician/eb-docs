# Electric Barometer

**Electric Barometer** is a framework for evaluating and selecting forecasting
systems under asymmetric, operationally meaningful cost structures.

Rather than optimizing forecasts purely for statistical accuracy, Electric
Barometer focuses on *decision quality*: how forecast errors translate into
real-world costs such as waste, shortages, labor inefficiency, or service loss.

---

## What Electric Barometer is

Electric Barometer provides:

- Cost-aware error and loss metrics
- Evaluation and selection utilities for competing forecasts
- A standardized adapter layer for integrating diverse forecasting engines
- A research-backed framework for reasoning about forecast readiness and risk

The system is designed for operational environments where over- and under-
forecasting have **unequal consequences**.

---

## What Electric Barometer is not

- It is not a forecasting model
- It does not replace model training pipelines
- It does not prescribe a single “best” forecast

Instead, it provides the tools needed to *choose appropriately* among forecasts
given operational objectives and constraints.

---

## Ecosystem overview

Electric Barometer is composed of several focused packages:

- **eb-metrics** — cost-aware loss and evaluation metrics
- **eb-evaluation** — model evaluation, comparison, and selection
- **eb-adapters** — adapters that normalize external models to a common interface
- **eb-papers** — theoretical foundations and technical notes

Each package is documented independently and can be used modularly.

---

## Where to start

- New users should begin with **Getting Started**
- To understand how the pieces fit together, see **Ecosystem**
- For implementation details, follow links to the individual package API docs