# Add a Feature Transform

Feature transforms convert raw data into representations that forecasting systems can use effectively. In Electric Barometer, feature transforms are treated as first-class, auditable components of a forecasting system rather than ad hoc preprocessing steps.

This guide describes the **process** for adding a new feature transform in a way that is consistent, reproducible, and compatible with the Electric Barometer ecosystem.

---

## When you should add a feature transform

Add a new feature transform when:

- Raw inputs do not express the signal needed for forecasting
- Domain structure must be encoded explicitly (e.g., seasonality, lags, exposure)
- Operational constraints require derived features
- Reuse across multiple forecasting systems is expected
- Feature logic should be governed and reviewed independently

If the logic is highly model-specific or experimental, it may not belong as a shared transform.

---

## Conceptual requirements

Before writing any code, clarify the following:

- **Purpose** — What signal does the transform introduce?
- **Scope** — Is it general-purpose or domain-specific?
- **Granularity** — At what entity and temporal level does it operate?
- **Dependencies** — What inputs does it require?
- **Stability** — Should it evolve frequently or remain fixed?

These decisions determine whether the transform belongs in a shared features library or as local preprocessing logic.

---

## Where feature transforms live

Feature transforms are implemented and documented in the **features repository**, which is the source of truth for:

- transform definitions
- expected inputs and outputs
- validation logic
- usage examples

The Electric Barometer documentation site references and routes to these materials but does not duplicate them.

---

## Implementation overview

At a high level, adding a feature transform involves:

1. Defining the transform interface
2. Implementing the transformation logic
3. Documenting behavior and assumptions
4. Validating correctness and stability
5. Making the transform discoverable and reusable

The exact mechanics depend on the features library, but the process is consistent.

---

## Step 1: Define the transform contract

A feature transform should have a clear contract:

- What inputs it expects
- What outputs it produces
- Any assumptions about ordering, completeness, or availability
- How missing or edge cases are handled

The contract should be explicit enough that downstream users do not need to inspect the implementation to understand behavior.

---

## Step 2: Implement the transform

Implement the transform according to the conventions of the features repository.

Guidelines:

- Keep logic focused and composable
- Avoid embedding model-specific assumptions
- Prefer clarity over cleverness
- Make cost, lag, or windowing choices explicit

Transforms should be deterministic and side-effect free.

---

## Step 3: Document intent and usage

Every feature transform must be documented alongside its implementation.

Documentation should explain:

- What the transform represents conceptually
- When it should be used
- When it should not be used
- Any known limitations or tradeoffs

This documentation lives in the features repository and is surfaced in the ecosystem docs through the Packages section.

---

## Step 4: Validate correctness and stability

Validation ensures that the transform behaves as intended across expected scenarios.

Validation may include:

- Unit tests over representative inputs
- Edge-case handling (missing data, boundaries)
- Consistency checks across entities or time
- Performance considerations for large panels

A transform that cannot be validated reproducibly should not be shared.

---

## Step 5: Make the transform discoverable

Once implemented and validated:

- Ensure it is included in the features package documentation
- Add or update usage examples if appropriate
- Reference it from higher-level guides or workflows if it represents a common pattern

Discoverability reduces duplication and encourages consistent feature usage across forecasting systems.

---

## Governance considerations

Feature transforms influence evaluation outcomes and downstream decisions. As such, they are subject to governance.

Good governance practices include:

- Versioning changes to transform behavior
- Avoiding silent modifications to existing transforms
- Documenting rationale for changes
- Preserving backward compatibility where possible

Transforms should evolve deliberately, not implicitly.

---

## How feature transforms fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Feature transforms shape the inputs to forecasting systems
- Evaluation measures the behavior of systems built on those features
- Decisioning and readiness depend on the stability and interpretability of features
- Governance ensures feature logic remains transparent and reproducible

Treating feature transforms as governed components improves trust in the entire forecasting pipeline.

---

## Where to go next

- See **Packages → Features** for available transforms and implementation details
- Follow **Workflows** to understand how features are used end-to-end
- Review **Governance** to understand how changes to feature logic are managed

Adding a feature transform is not just a coding task. It is a design decision that affects evaluation, decisioning, and operational outcomes across the Electric Barometer ecosystem.
