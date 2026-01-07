# Electric Barometer

Electric Barometer is a forecasting evaluation and decision-governance framework designed for operational systems where forecast errors carry asymmetric cost and decisions must be reproducible, auditable, and policy-driven.

Unlike traditional forecasting toolchains that emphasize symmetric accuracy metrics and model performance in isolation, Electric Barometer treats forecasting as one component of a broader decision system. It separates forecasting, evaluation, selection, and policy tuning into explicit layers, allowing organizations to reason about risk, tradeoffs, and operational readiness in a principled way.

---

## What Electric Barometer is designed to solve

Electric Barometer is built for environments where:

- Forecast errors have **unequal consequences** (e.g., under- vs over-production).
- Decisions must be **defensible and repeatable**, not ad hoc.
- Multiple models, features, and configurations must be compared **systematically**.
- Evaluation outcomes must translate into **actionable policy**, not just scores.
- Forecasting operates over **panel or entity-level time series** in production workflows.

The framework emphasizes cost-aware evaluation, explicit decision policies, and reproducible artifacts over raw predictive accuracy.

---

## The Electric Barometer ecosystem

Electric Barometer is an ecosystem of focused libraries and tools, each responsible for a specific layer of the forecasting and decision lifecycle. These components are coordinated through shared concepts, contracts, and workflows, but remain independently versioned and maintainable.

At a high level, the ecosystem covers:

- Feature engineering and data preparation
- Forecast generation
- Cost-aware evaluation and sensitivity analysis
- Model selection and tie-breaking
- Policy tuning and parameter optimization
- Integration testing and end-to-end validation

This documentation site serves as the **central narrative and integration layer** for the ecosystem. Detailed, repository-specific documentation lives in each library’s own documentation and is surfaced here where appropriate.

---

## How to use this documentation

This site is organized by intent, not by repository.

### If you are new to Electric Barometer
Start with the orientation material:
- **[Start Here](start/)** — high-level overview, quickstart, and ecosystem map.

### If you want to understand the theory and design
Read the system foundations:
- **[Concepts](concepts/)** — problem framing, asymmetric cost, governance, and readiness.
- **[Metrics](metrics/)** — decision-aware evaluation measures and their interpretation.

### If you want to run or design workflows
Follow the lifecycle:
- **[Workflows](workflows/)** — how data, forecasts, evaluation, selection, and policies connect end-to-end.
- **[Optimization](optimization/)** — how policies and parameters are tuned against objectives.

### If you are using or contributing to a specific library
Go to the ecosystem entry points:
- **[Packages](packages/)** — curated overviews and links to each Electric Barometer repository and its documentation.

### If you want the formal foundations
Consult the research artifacts:
- **[Papers](papers/)** — technical notes and formal papers defining metrics, frameworks, and governance models.

---

## Maturity and scope

Electric Barometer is under active development. Core concepts and evaluation principles are stable, while implementation details and tooling continue to evolve. The technical notes and papers represent the formal definitions that guide the system design.

This documentation prioritizes clarity, traceability, and long-term maintainability over brevity or marketing polish.

---

## Where to go next

- Begin with **[Start Here](start/)** for orientation and setup.
- Read **[Concepts](concepts/)** to understand the system philosophy.
- Explore **[Workflows](workflows/)** to see how Electric Barometer operates in practice.
- Visit **[Packages](packages/)** to work with specific libraries.
- Review **[Papers](papers/)** for formal definitions and theoretical grounding.
