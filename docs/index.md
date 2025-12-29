# Electric Barometer

**Electric Barometer** is a framework for evaluating and selecting forecasting
systems under asymmetric, operationally meaningful cost structures.

Rather than optimizing forecasts purely for statistical accuracy, Electric
Barometer focuses on **decision quality at deployment time**: how forecast errors
translate into real-world operational consequences such as waste, shortages,
labor inefficiency, or service loss.

---

## What Electric Barometer is

Electric Barometer provides:

- Cost-aware error and loss metrics
- Evaluation and selection utilities for competing forecasts
- A standardized adapter layer for integrating diverse forecasting engines
- A research-backed framework for reasoning about forecast readiness and risk

At its core, Electric Barometer reframes forecast evaluation around **readiness**:
whether a forecast is *appropriate* for a given operational context, not merely
accurate in aggregate.

The framework is designed for environments where over- and under-forecasting have
**unequal consequences** and where deployment decisions must be defensible,
auditable, and aligned with operational priorities.

---

## What Electric Barometer is not

- It is not a forecasting model
- It does not replace model training pipelines
- It does not prescribe a single “best” forecast

Electric Barometer does not compete with forecasting methods.
It governs **how forecasts are evaluated and selected** once they exist.

---

## Ecosystem overview

Electric Barometer is composed of several focused, interoperable packages:

- **eb-metrics** — cost-aware loss and evaluation metrics
- **eb-evaluation** — forecast evaluation, comparison, and selection utilities
- **eb-adapters** — adapters that normalize external models to a common interface
- **eb-papers** — theoretical foundations and technical notes

Each package is documented independently and can be used modularly, allowing
organizations to adopt only the components they need.

---

## Where to start

- **New users** should begin with **Getting Started**
- To understand the conceptual structure, see **How Electric Barometer Works**
- For precise terminology, consult the **Glossary**
- For common concerns and objections, see the **FAQ**
- For implementation details, follow links to the individual package API
  documentation

---
