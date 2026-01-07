# Concepts

The Electric Barometer framework is built on a small set of foundational concepts that shape how forecasting systems are evaluated, governed, and used in operational decision-making.

These concepts are not implementation details. They define the **mental model** of the system: how problems are framed, how uncertainty and cost are treated, how measurements relate to decisions, and how choices are governed over time.

Understanding these concepts is essential before engaging with metrics, workflows, optimization, or individual libraries.

---

## Why concepts come first

Forecasting systems often fail not because of poor models, but because of unclear assumptions about what is being optimized, how risk is handled, and how decisions are made.

Electric Barometer addresses these failures by making core assumptions explicit:

- Forecasting is a means to support decisions, not an end in itself.
- Errors are not interchangeable when costs are asymmetric.
- Measurement and choice are distinct stages with different responsibilities.
- Policy and preference must be visible, not embedded implicitly.
- Suitability for use matters as much as predictive performance.

The Concepts section establishes these principles before introducing tools or techniques.

---

## How to read this section

Each concept page focuses on a single foundational idea and is written to stand on its own. Together, they form a coherent system.

The recommended reading order is:

1. **[Problem Framing](problem-framing/)**  
   Defines how forecasting problems should be framed as decision problems rather than prediction tasks.

2. **[Asymmetric Cost](asymmetric-cost/)**  
   Explains why the direction and context of error matter more than magnitude alone in operational settings.

3. **[Evaluation vs Decisioning](evaluation-vs-decisioning/)**  
   Separates measurement from action, clarifying the role of metrics versus policy.

4. **[Governance](governance/)**  
   Describes how evaluation and decision processes are controlled, audited, and evolved over time.

5. **[Readiness and the Readiness Adjustment Layer (RAL)](readiness-and-ral/)**  
   Introduces readiness as a decision-facing concept and explains how evaluation outputs are made suitable for operational use.

6. **[Glossary](glossary/)**  
   Provides a shared vocabulary used consistently throughout the Electric Barometer ecosystem.

While the concepts build on one another, they are designed to be referenced independently as needed.

---

## Scope and boundaries

The Concepts section intentionally avoids:

- Formal mathematical definitions
- Metric equations or algorithms
- Package-specific behavior
- Implementation or configuration details

Those topics are addressed elsewhere:

- **[Metrics](../metrics/)** formalize evaluation measures
- **[Workflows](../workflows/)** describe how systems operate end-to-end
- **[Optimization](../optimization/)** covers selection, tuning, and policy application
- **[Packages](../packages/)** document individual libraries and APIs
- **[Papers](../papers/)** provide formal and theoretical foundations

Concepts define *why* the system is structured as it is, not *how* it is implemented.

---

## Concepts as a stable foundation

Concepts change more slowly than code.

By establishing clear conceptual boundaries, Electric Barometer enables:

- Consistent interpretation of metrics and results
- Transparent decision-making across teams and time
- Evolution of tools without redefining fundamentals
- Shared understanding between technical and non-technical stakeholders

These concepts serve as the stable foundation on which the rest of the ecosystem is built.

---

## Where to go next

- Begin with **[Problem Framing](problem-framing/)** to understand how forecasting problems are defined.
- Explore **[Metrics](../metrics/)** to see how these concepts are operationalized in evaluation.
- Follow **[Workflows](../workflows/)** to understand how concepts translate into execution.
- Consult **[Papers](../papers/)** for formal definitions and deeper theoretical grounding.

The Concepts section is the intellectual core of Electric Barometer. Everything else builds on it.
