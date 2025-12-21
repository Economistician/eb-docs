# Ecosystem

This page provides a high-level overview of the Electric Barometer ecosystem and
how its individual packages fit together.

Electric Barometer is intentionally modular. Each package has a narrow,
well-defined responsibility, allowing the system to be composed flexibly and
introduced incrementally into existing forecasting pipelines.

---

## Core packages

### eb-metrics

Defines cost-aware error and loss functions used to evaluate forecasts under
asymmetric operational cost structures.

This package answers the question:
How costly is a particular forecast error, given real-world consequences?

Typical responsibilities include:
- asymmetric loss functions
- operationally meaningful error metrics
- aggregation utilities for evaluation

---

### eb-evaluation

Provides utilities for evaluating, comparing, and selecting competing forecasts
using metrics defined in eb-metrics.

This package answers the question:
Which forecast should be deployed, given the cost structure of the problem?

Typical responsibilities include:
- model evaluation workflows
- forecast comparison and ranking
- selection logic under asymmetric loss

---

### eb-adapters

Provides thin adapter classes that normalize external forecasting and regression
libraries to a common interface.

This package answers the question:
How do I make diverse models compatible with Electric Barometer evaluation?

Typical responsibilities include:
- wrapping non-scikit-learn models
- enforcing a consistent fit / predict interface
- managing optional dependencies cleanly

---

### eb-papers

Contains the theoretical foundations, technical notes, and formal derivations
that motivate the Electric Barometer framework.

This package answers the question:
Why does this framework exist, and what theory supports it?

Typical responsibilities include:
- technical notes
- research papers
- mathematical derivations and proofs

---

## How the pieces fit together

At a high level:

1. Forecasts are generated using any modeling approach
2. Non-standard models are wrapped using eb-adapters
3. Forecasts are evaluated using cost-aware metrics from eb-metrics
4. Competing forecasts are compared and selected using eb-evaluation

Electric Barometer does not replace existing forecasting systems. Instead, it
provides a principled layer for reasoning about forecast quality and deployment
decisions.

---

## Next steps

From here, you may want to:
- Review the Getting Started guide
- Explore the API documentation for individual packages
- Read the technical notes and papers for deeper theoretical context

The ecosystem is designed to scale from simple comparisons to complex,
operational decision environments.