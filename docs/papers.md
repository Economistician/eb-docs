# Papers and Technical Notes

The Electric Barometer research artifacts (papers and technical notes) are published
as versioned PDFs in the `eb-papers` repository.

## Download PDFs

- **Latest release (recommended):**  
  https://github.com/Economistician/eb-papers/releases/latest

---

## Papers

| Artifact | Description |
|--------|-------------|
| **Forecast Readiness Framework (FRF)** | A decision-oriented framework for evaluating when forecasting systems are operationally deployable, integrating service reliability and asymmetric cost exposure into a single readiness score. |

---

## Technical Notes

| Abbreviation | Name | Description |
|-------------|------|-------------|
| **CWSL** | Cost-Weighted Service Loss | A loss formulation that encodes asymmetric operational costs of over- and under-forecasting, emphasizing the higher cost of service shortfalls. |
| **CWSLR** | Cost-Weighted Service Loss Ratio | A normalized extension of CWSL enabling comparison across products, stores, or operational contexts with differing cost scales. |
| **FRS** | Forecast Readiness Score | A bounded score combining service reliability (NSL) and scaled cost exposure (CWSLscaled) to assess forecast deployability. |
| **HRAT** | Hit Rate at τ | A threshold-based service metric measuring the fraction of periods in which forecasted demand meets or exceeds realized demand. |
| **NSL** | Normalized Service Level | A coverage-based metric measuring how frequently forecasts satisfy demand, independent of miss magnitude. |
| **RAL** | Readiness Adjustment Layer | A structural layer that adjusts forecast outputs based on operational readiness signals and downstream cost sensitivity. |
| **UD** | Underbuild Depth | A conditional severity metric measuring the average magnitude of forecast shortfalls when underbuilding occurs. |

---

## Versions

For older versions and the full release history, see:  
https://github.com/Economistician/eb-papers/releases