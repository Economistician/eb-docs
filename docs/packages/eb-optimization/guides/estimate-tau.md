# Estimate Service Threshold (τ)

This guide documents **service threshold (τ)** estimation utilities provided by
**eb-optimization**. These functions help calibrate what “acceptable service” means
for threshold- and hit-rate–based Electric Barometer metrics.

Use these utilities to estimate τ **offline**, validate stability, and then freeze the
result into a `TauPolicy` to ensure deterministic and governed evaluation behavior.

All content below is generated automatically from **NumPy-style docstrings** in the
source code.

## Tau Tuning API

::: eb_optimization.tuning.tau
