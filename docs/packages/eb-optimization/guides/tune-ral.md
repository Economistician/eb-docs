# Tune Readiness Adjustment Layer (RAL)

This guide documents Readiness Adjustment Layer (**RAL**) tuning utilities provided by
**eb-optimization**. RAL tuning calibrates how forecasts are adjusted to reflect execution
readiness *prior* to evaluation.

Use these functions to tune readiness behavior **offline**, review assumptions and
diagnostics, and freeze results into a `RALPolicy`. RAL exists to calibrate realism,
not to optimize evaluation scores.

All content below is generated automatically from **NumPy-style docstrings** in the
source code.

## RAL Tuning API

::: eb_optimization.tuning.ral
