# Technical Papers

Technical Papers are extended, formal works that develop the Electric Barometer framework at a system or theory level. They go beyond focused technical notes to present integrated frameworks, extended analysis, and broader implications.

All Technical Papers live authoritatively in the **eb-papers** repository. This section serves as a structured index and guide.

---

## Purpose of technical papers

Technical Papers exist to:

- Present end-to-end frameworks and architectures
- Develop theory across multiple components
- Formalize interactions between metrics, readiness, and policy
- Provide durable, citable references
- Support peer, executive, or academic review

They are not introductions, tutorials, or API documentation.

---

## How technical papers differ from technical notes

| Aspect | Technical Notes | Technical Papers |
|------|-----------------|------------------|
| Scope | Focused, component-level | System-level or cross-cutting |
| Length | Short to medium | Medium to long |
| Purpose | Define and formalize | Develop and integrate |
| Audience | Practitioners and reviewers | Researchers and architects |

Both are formal; papers are broader.

---

## Available technical papers

### Decision-Aware Forecast Evaluation

**Scope**  
Presents the Electric Barometer framework as a decision-aware evaluation system, integrating asymmetric cost, readiness, policy, and governance into a unified structure.

**What it establishes**
- Formal separation of evaluation and decisioning
- End-to-end lifecycle from forecasts to decisions
- Role of policy and governance in operational systems

**When to read**
- When evaluating Electric Barometer holistically
- When presenting the framework to leadership or reviewers
- When assessing architectural soundness

**Source**  
Authoritative source lives in the `eb-papers` repository under the decision-aware evaluation paper.

Related docs:
- **[Evaluation vs Decisioning](../concepts/evaluation-vs-decisioning/)**
- **[Ecosystem Map](../start/ecosystem-map/)**

---

### Asymmetric Cost and Operational Risk

**Scope**  
Develops a formal treatment of asymmetric cost in operational forecasting, including implications for evaluation, optimization, and decision stability.

**What it establishes**
- Why symmetric accuracy fails in operational settings
- Formal modeling of asymmetric loss
- Implications for policy and optimization

**When to read**
- When justifying asymmetric metrics formally
- When defending cost-aware evaluation choices
- When extending cost models

**Source**  
Authoritative source lives in the `eb-papers` repository under the asymmetric cost paper.

Related docs:
- **[Asymmetric Cost](../concepts/asymmetric-cost/)**
- **[CWSL](../metrics/cwsl/)**

---

### Readiness, Stability, and Decision Integrity

**Scope**  
Explores readiness as a distinct layer between evaluation and decisioning, focusing on stability, uncertainty, and operational robustness.

**What it establishes**
- Formal readiness criteria
- Adjustment mechanisms and constraints
- Interaction between readiness and policy

**When to read**
- When formalizing readiness logic
- When auditing decision robustness
- When designing stability-aware systems

**Source**  
Authoritative source lives in the `eb-papers` repository under the readiness and integrity paper.

Related docs:
- **[Readiness and RAL](../concepts/readiness-and-ral/)**
- **[Optimization](../optimization/)**

---

### Governance of Forecast-Driven Decisions

**Scope**  
Defines governance requirements for systems where forecasts influence operational decisions, emphasizing traceability, reproducibility, and accountability.

**What it establishes**
- Governance primitives and constraints
- Separation of roles and responsibilities
- Auditability and lifecycle integrity

**When to read**
- When designing governance processes
- When supporting regulated or high-stakes environments
- When reviewing historical decision outcomes

**Source**  
Authoritative source lives in the `eb-papers` repository under the governance paper.

Related docs:
- **[Governance](../concepts/governance/)**
- **[Policies](../optimization/policies/)**

---

## Status and evolution

Technical Papers are treated as long-lived artifacts:

- They are versioned and archived
- Superseding papers do not invalidate prior ones
- Documentation links preserve historical context
- New papers are added deliberately

This index will evolve only as new Technical Papers are formally introduced.

---

## Where to go next

- For focused, component-level formalism, see **[Technical Notes](technical-notes/)**  
- For conceptual explanations, see **[Concepts](../concepts/)**  
- For applied workflows, see **[Guides](../guides/)**  

Technical Papers provide the deep theoretical backbone of Electric Barometer. They exist to make the framework durable, reviewable, and extensible at scale.
