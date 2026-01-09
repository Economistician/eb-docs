# Guides

This section provides **practical guidance** for applying Electric Barometer in real systems.

Where **Concepts** define the theoretical and diagnostic foundations, and **Workflows** define
the canonical execution pipeline, **Guides** address recurring implementation and interpretation
questions that arise when the framework is applied in practice.

Guides are intentionally concrete, scoped, and non-exhaustive.

---

## What guides are (and are not)

Guides exist to clarify *how to use* Electric Barometer correctly — not to extend the framework
or prescribe modeling choices.

They are intended to:

- illustrate correct application patterns,
- clarify common points of confusion,
- document defensible conventions,
- and highlight failure modes and misuses.

They do **not**:

- introduce new metrics or diagnostics,
- redefine framework semantics,
- prescribe forecasting models or features,
- or replace the formal papers.

When a concept requires formal definition, it belongs in **Papers**, not here.

---

## When to use the guides

You should consult this section when you are asking questions such as:

- *How should I think about tolerance selection in practice?*
- *What does it mean for a forecast to be “ready enough”?*
- *How do I interpret readiness metrics under discrete demand?*
- *When is readiness adjustment appropriate — and when is it not?*
- *How should governance outcomes be communicated downstream?*

If you are asking *what the framework is*, start with **Concepts**.  
If you are asking *how the system runs*, start with **Workflows**.

---

## Guide categories

The guides in this section are organized around common application themes:

- **Interpretation guides**  
  How to interpret readiness diagnostics, tolerance behavior, and cost asymmetry in operational
  contexts.

- **Application guides**  
  How to apply Electric Barometer to specific problem classes (e.g., production, staffing,
  replenishment) without hard-coding domain assumptions into the framework.

- **Governance and policy guides**  
  How to reason about governance outcomes, decision closure, and policy communication.

- **Anti-patterns and pitfalls**  
  Common misuses of readiness metrics, adjustment layers, and evaluation outputs.

Each guide is written to stand alone and may be read independently.

---

## Scope and non-goals

Guides deliberately avoid:

- step-by-step tutorials,
- code walkthroughs,
- platform-specific instructions,
- or performance optimization advice.

Those concerns are orthogonal to Electric Barometer’s role as a **readiness and governance
framework**.

---

## Relationship to the rest of the documentation

The documentation layers are intentionally hierarchical:

1. **Papers** define formal constructs and guarantees.
2. **Concepts** summarize and contextualize those constructs.
3. **Workflows** specify canonical execution order and artifacts.
4. **Guides** support correct and defensible use in practice.

Guides must remain consistent with all layers above them.

---

## Reading order (recommended)

If you are new to Electric Barometer:

1. Start with **Concepts**
2. Review **Workflows**
3. Use **Guides** as reference material during application

---

## Final note

Guides are living documents.

They may expand over time to address recurring questions or observed failure modes, but they
will not redefine the framework. Any change in formal meaning belongs upstream.

This boundary is intentional.
