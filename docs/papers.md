# Papers and Technical Notes

The Electric Barometer research artifacts (papers and technical notes) are published
as versioned PDFs in the `eb-papers` repository. This page provides direct access to
the **most recent stable versions** of each artifact.

All links below automatically resolve to the latest published release.

---

## Papers

| Artifact | Description | PDF |
|--------|-------------|-----|
| **Forecast Readiness Framework (FRF)** | The canonical decision-oriented framework for evaluating whether forecasting systems are fit for operational deployment under asymmetric error cost. FRF decomposes forecast readiness into complementary diagnostic dimensions—service reliability, failure severity, tolerance stability, and economic consequence—and provides a structured basis for model selection, monitoring, and governance beyond symmetric accuracy metrics. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_PAPER_FRF_latest.pdf) |

---

## Technical Notes

| Artifact | Description | PDF |
|--------|-------------|-----|
| **Cost-Weighted Service Loss (CWSL)** | An asymmetric forecast evaluation metric that applies explicit penalty weights to underbuild and overbuild magnitudes and normalizes by realized demand, yielding an interpretable measure of the effective fraction of operational throughput lost due to forecast–demand misalignment. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSL_latest.pdf) |
| **Cost-Weighted Service Loss Ratio (CWSLR)** | A technical framework for governing asymmetric cost assumptions in forecast evaluation. Introduces response-surface analysis of Cost-Weighted Service Loss over cost ratios, grid-based sensitivity diagnostics, and deterministic, data-driven calibration rules for selecting and governing cost asymmetry within the Forecast Readiness Framework. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSLR_latest.pdf) |
| **No-Shortfall Level (NSL)** | A binary, interval-level reliability metric measuring the proportion of decision intervals in which forecasted demand meets or exceeds realized demand. NSL captures the frequency of shortfall avoidance, independent of error magnitude, and provides a scale-invariant indicator of operational coverage reliability. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_NSL_latest.pdf) |
| **Hit Rate within Tolerance (HR@τ)** | A threshold-based, interval-level reliability metric measuring the proportion of forecast intervals in which absolute error remains within an operationally meaningful tolerance band. HR@τ evaluates how often a forecast is “accurate enough” to support stable execution, independent of error direction or magnitude beyond the tolerance threshold. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRAT_latest.pdf) |
| **Tolerance Sensitivity and Calibration for HR@τ** | Treats HR@τ as a response surface over tolerance levels and provides governed, data-driven methods to select and audit the tolerance parameter τ, including target hit-rate calibration, knee-point detection, utility-based selection, and entity-level extensions for deployable readiness evaluation. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRTAU_latest.pdf) |
| **Underbuild Depth (UD)** | A conditional severity metric measuring the average depth of forecast shortfalls, computed only over intervals in which underbuilding occurs, isolating the magnitude of unmet demand rather than its frequency. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_UD_latest.pdf) |
| **Forecast Readiness Score (FRS)** | A bounded composite readiness metric that summarizes how well a forecasting system supports operational execution by jointly capturing shortfall avoidance (NSL) and normalized asymmetric cost exposure (CWSLscaled), providing an interpretable indicator of deployment readiness under asymmetric service and cost constraints. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_FRS_latest.pdf) |
| **Readiness Adjustment Layer (RAL)** | A deterministic, post-forecast control mechanism that applies bounded adjustments to forecast outputs in order to reduce decision-relevant loss under asymmetric operational cost and readiness constraints, without modifying or retraining the underlying forecasting model. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_RAL_latest.pdf) |

---

## Version History

For older versions and the full release history, see:  
https://github.com/Economistician/eb-papers/releases