# eb-optimization

This section documents **eb-optimization**, the decision-optimization layer of the
Electric Barometer ecosystem.

eb-optimization provides deterministic, governance-aware utilities for:

- Calibrating decision parameters from historical data
- Freezing those parameters into immutable policy artifacts
- Supporting reproducible, auditable evaluation workflows downstream

The package is intentionally constrained in scope. It does **not** train forecasting
models or perform evaluation directly. Instead, it formalizes *decision logic* that
sits between forecasting and evaluation.

All content below is generated automatically from **NumPy-style docstrings** in the
source code.

## eb-optimization API

::: eb_optimization
