# Papers

This section provides direct access to the formal research and technical foundations of the **Electric Barometer** framework.

All papers are authored and maintained in the **eb-papers** repository.  
This page serves as a **navigation and download index** for the latest authoritative PDF builds.

---

## Electric Barometer Ecosystem

Foundational research defining readiness-based forecast evaluation, asymmetric loss, admissibility, and governance for operational decision systems.  
These papers establish the core theoretical and technical primitives that underpin the Electric Barometer ecosystem.

| Topic | Description | PDF |
|------|-------------|-----|
| **Forecast Readiness Framework (FRF)** | Establishes a unified framework for evaluating forecast performance through readiness, asymmetric loss, admissibility, and governance rather than accuracy alone. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_PAPER_FRF_latest.pdf) · [Exec](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_BB_FRF_latest.pdf)|
| **Cost-Weighted Service Loss (CWSL)** | Defines an asymmetric, cost-weighted loss function for evaluating forecast error relative to operational underbuild and overbuild risk. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSL_latest.pdf) |
| **CWSL Ratio Calibration (CWSLR)** | Formalizes sensitivity analysis and calibration of the cost ratios governing asymmetric loss in CWSL. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_CWSLR_latest.pdf) |
| **Hit Rate at Tolerance (HR@τ)** | Measures the proportion of forecasts that fall within an acceptable tolerance band, capturing operational reliability rather than magnitude of error. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRAT_latest.pdf) |
| **Tolerance Sensitivity for HR@τ (HRτ)** | Analyzes how tolerance selection affects acceptability rates and readiness interpretation. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_HRTAU_latest.pdf) |
| **No-Shortfall Level (NSL)** | Defines a binary coverage metric indicating whether forecasts avoid operational shortfall events within a decision horizon. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_NSL_latest.pdf) |
| **Underbuild Depth (UD)** | Quantifies the severity of forecast shortfalls conditional on a shortfall occurring. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_UD_latest.pdf) |
| **Forecast Readiness Score (FRS)** | Aggregates multiple readiness and reliability metrics into a single interpretable readiness signal. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_FRS_latest.pdf) |
| **Forecast Primitive Compatibility (FPC)** | Diagnoses structural incompatibility between forecast primitives and operational demand processes. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_FPC_latest.pdf) |
| **Demand Quantization Compatibility (DQC)** | Formalizes admissibility of discrete demand, zero-demand states, and operating-hour semantics for evaluation and control. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_DQC_latest.pdf) |
| **Forecast Governance** | Defines deterministic governance gates that enforce structural validity, readiness thresholds, and policy constraints prior to action. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_GOVERNANCE_latest.pdf) |
| **Readiness Adjustment Layer (RAL)** | Specifies a controlled post-evaluation adjustment mechanism that modifies forecasts to satisfy readiness and governance constraints under asymmetric cost. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_TN_RAL_latest.pdf) |

---

## Operational Control Frameworks

Applied control frameworks that operationalize Electric Barometer primitives for specific decision environments under demand uncertainty.  
These frameworks consume the core ecosystem constructs to produce concrete, policy-driven decision systems.

| Topic | Description | PDF |
|------|-------------|-----|
| **Limited Time Offer Readiness (LTOR)** | Defines a readiness-centric control framework for managing limited-time offers under demand uncertainty, linking forecasts, loss signals, and operational resolution. | [Tech](https://github.com/Economistician/eb-papers/releases/latest/download/ElectricBarometer_PAPER_LTOR_latest.pdf) |

---

## Notes on versions and governance

- **Download** links point to the latest authoritative build produced by the release workflow (`*_latest.pdf`)
- Versioned PDFs are also produced per tag and remain archived as release assets
- Updates are deliberate, reviewable, and traceable

This ensures the Electric Barometer framework remains **credible, auditable, and durable** as it evolves.
