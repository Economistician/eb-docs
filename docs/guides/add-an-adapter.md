# Add an Adapter

Adapters connect Electric Barometer to external systems, data sources, or execution environments. They translate between ecosystem-neutral interfaces and context-specific inputs or outputs without embedding domain assumptions into core logic.

This guide describes how to add a new adapter in a way that preserves modularity, reproducibility, and governance across the Electric Barometer ecosystem.

---

## When you should add an adapter

Add an adapter when:

- Integrating a new data source, storage system, or execution platform
- Connecting Electric Barometer to an external forecasting engine or service
- Translating between external schemas and internal contracts
- Supporting environment-specific I/O (filesystems, databases, APIs)
- Isolating operational concerns from evaluation and decision logic

If logic alters evaluation behavior or encodes policy, it likely does not belong in an adapter.

---

## What adapters are responsible for

Adapters serve as **translation layers**. Their responsibility is to move information across boundaries, not to interpret it.

Adapters may handle:

- Data ingestion and extraction
- Schema translation and validation
- Serialization and deserialization
- Environment-specific configuration
- Integration with external services

Adapters should not define metrics, policies, or decision rules.

---

## What adapters should not do

Adapters should avoid:

- Embedding domain or business logic
- Modifying evaluation assumptions
- Applying cost weights or policy preferences
- Performing feature engineering beyond basic translation
- Making decisions based on evaluation outputs

Keeping adapters thin preserves clarity and prevents coupling.

---

## Where adapters live

Adapters are implemented and documented in the **adapters repository**, which is the source of truth for:

- adapter interfaces
- supported systems and environments
- configuration requirements
- usage examples

The Electric Barometer documentation site references adapters conceptually and routes users to the appropriate repository documentation.

---

## Step 1: Define the integration boundary

Before writing code, define the boundary the adapter will bridge.

Clarify:

- What external system is being integrated
- What data enters or leaves Electric Barometer
- What contracts or schemas apply on each side
- Where responsibility for validation lies

A clear boundary prevents leakage of external concerns into core logic.

---

## Step 2: Define adapter inputs and outputs

Every adapter should have a well-defined interface.

This includes:

- Input formats and required fields
- Output formats and guarantees
- Error handling behavior
- Assumptions about ordering, completeness, or latency

Interfaces should be explicit enough to support testing and reuse without inspecting implementation details.

---

## Step 3: Implement translation logic

Implement the adapter according to the conventions of the adapters repository.

Guidelines:

- Keep logic focused on translation
- Prefer explicit mappings over implicit inference
- Avoid side effects where possible
- Fail fast on invalid or unsupported inputs

Adapters should behave deterministically given the same inputs and configuration.

---

## Step 4: Document usage and limitations

Every adapter must be documented alongside its implementation.

Documentation should explain:

- What systems or environments it supports
- How it should be configured
- Known limitations or constraints
- Expected performance characteristics

Clear documentation prevents misuse and reduces the need for ad hoc fixes.

---

## Step 5: Validate integration behavior

Validation ensures that the adapter behaves correctly under expected conditions.

Validation may include:

- Integration tests against representative external systems
- Schema validation tests
- Error-path testing
- Round-trip consistency checks

Adapters that cannot be validated reliably should not be used in production workflows.

---

## Governance considerations

Adapters influence how data and results enter and exit the system. As such, they are subject to governance.

Good governance practices include:

- Versioning adapter behavior and interfaces
- Avoiding silent schema changes
- Documenting external dependencies
- Preserving backward compatibility where feasible

Adapters should evolve deliberately as integration requirements change.

---

## How adapters fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Adapters connect external systems to internal workflows
- Feature transforms and metrics operate on adapter-provided data
- Evaluation and decisioning remain ecosystem-neutral
- Governance ensures integrations remain transparent and reproducible

Adapters enable flexibility without sacrificing clarity or control.

---

## Where to go next

- See **Packages → Adapters** for available adapters and implementation details
- Follow **Workflows** to understand how adapters participate in end-to-end runs
- Review **Governance** to understand how integration changes are managed

Adding an adapter is an architectural decision. By isolating integration concerns, Electric Barometer maintains a clean separation between external systems and internal decision logic.
