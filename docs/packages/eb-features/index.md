# eb-features

**eb-features** provides feature engineering utilities for **panel time-series data**
(entity × timestamp) in the **Electric Barometer** ecosystem.

It focuses on deterministic, leakage-safe feature construction for classical ML workflows,
including lags, rolling statistics, and calendar-derived features.

---

## Naming convention

Electric Barometer packages follow a consistent naming convention:

- **Distribution names** (used with `pip install`) use hyphens  
  e.g. `pip install eb-features`
- **Python import paths** use underscores  
  e.g. `import eb_features`

---

## What this package provides

### Panel feature engineering primitives
- Lag features (`lag_k`)
- Rolling window statistics (`roll_w_mean`, `roll_w_std`, etc.)
- Calendar features (hour, day-of-week, month, weekend indicator)
- Optional cyclical encodings (sin/cos for hour and day-of-week)

### Safety and validation
- Entity-local computation (no cross-entity leakage)
- Monotonic timestamp validation within entity
- Deterministic sorting for reproducible feature generation

---

## Documentation structure

- **API Reference**  
  All module documentation is generated automatically from NumPy-style docstrings
  in the source code using `mkdocstrings`.

---

## Relationship to the Electric Barometer ecosystem

`eb-features` provides the **feature engineering layer** used by evaluation and
model-selection workflows. It is designed to be used alongside:

- **eb-metrics** — cost-aware evaluation metrics
- **eb-evaluation** — evaluation + model selection workflows
- **eb-adapters** — integrations with forecasting systems
- **eb-papers** — formal definitions and technical notes