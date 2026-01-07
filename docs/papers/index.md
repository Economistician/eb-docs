# Papers

This section provides direct access to the formal research and technical foundations of the **Electric Barometer** framework.

All papers are authored and maintained in the **eb-papers** repository.  
This page serves as a **navigation and download index** for the latest authoritative PDF builds.

---

## Technical Papers

| Topic | Description | PDF |
|------|-------------|-----|
| **Forecast Readiness Framework (FRF)** | Establishes a unified framework for evaluating forecast performance through readiness, asymmetric loss, admissibility, and governance rather than accuracy alone. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_PAPER_FRF_latest.pdf) |
| **Limited Time Offer Readiness (LTOR)** | Defines a readiness-centric control framework for managing limited-time offers under demand uncertainty, linking forecasts, loss signals, and operational resolution. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_PAPER_LTOR_latest.pdf) |

---

## Technical Notes

| Topic | Description | PDF |
|------|-------------|-----|
| **Cost-Weighted Service Loss (CWSL)** | Defines an asymmetric, cost-weighted loss function for evaluating forecast error relative to operational underbuild and overbuild risk. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSL_latest.pdf) |
| **CWSL Ratio Calibration (CWSLR)** | Formalizes sensitivity analysis and calibration of the cost ratios governing asymmetric loss in CWSL. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSLR_latest.pdf) |
| **Hit Rate at Tolerance (HR@τ)** | Measures the proportion of forecasts that fall within an acceptable tolerance band, capturing operational reliability rather than magnitude of error. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRAT_latest.pdf) |
| **Tolerance Sensitivity for HR@τ (HRτ)** | Analyzes how tolerance selection affects acceptability rates and readiness interpretation. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRTAU_latest.pdf) |
| **No-Shortfall Level (NSL)** | Defines a binary coverage metric indicating whether forecasts avoid operational shortfall events within a decision horizon. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_NSL_latest.pdf) |
| **Underbuild Depth (UD)** | Quantifies the severity of forecast shortfalls conditional on a shortfall occurring. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_UD_latest.pdf) |
| **Forecast Readiness Score (FRS)** | Aggregates multiple readiness and reliability metrics into a single interpretable readiness signal. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_FRS_latest.pdf) |
| **Forecast Primitive Compatibility (FPC)** | Diagnoses structural incompatibility between forecast primitives and operational demand processes. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_FPC_latest.pdf) |
| **Demand Quantization Compatibility (DQC)** | Formalizes admissibility of discrete demand, zero-demand states, and operating-hour semantics for evaluation and control. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_DQC_latest.pdf) |
| **Forecast Governance** | Defines deterministic governance gates that enforce structural validity, readiness thresholds, and policy constraints prior to action. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_GOVERNANCE_latest.pdf) |
| **Readiness Adjustment Layer (RAL)** | Specifies a controlled post-evaluation adjustment mechanism that modifies forecasts to satisfy readiness and governance constraints under asymmetric cost. | [Download](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_RAL_latest.pdf) |

---

## Notes on versions and governance

- **Download** links point to the latest authoritative build produced by the release workflow (`*_latest.pdf`)
- Versioned PDFs are also produced per tag and remain archived as release assets
- Updates are deliberate, reviewable, and traceable

This ensures the Electric Barometer framework remains **credible, auditable, and durable** as it evolves.
