# Estimate Cost Ratio (R)

This guide documents the **cost ratio estimation** utilities provided by
**eb-optimization**, used to derive asymmetric cost parameters (R) that govern
cost-weighted evaluation in the Electric Barometer ecosystem.

Use these functions to estimate R **offline** from historical actuals and forecasts,
review diagnostics, and then freeze results into a `CostRatioPolicy` for consistent
downstream evaluation.

All content below is generated automatically from **NumPy-style docstrings** in the
source code.

## Cost Ratio Tuning API

::: eb_optimization.tuning.cost_ratio
