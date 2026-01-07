# Technical Notes

Technical Notes are formal, focused documents that define and justify specific components of the Electric Barometer framework. They provide mathematical structure, precise definitions, and formal reasoning that underpin the concepts and workflows described elsewhere in the documentation.

These notes are authoritative references. The full content of each note lives in the **eb-papers** repository. This section serves as a catalog and guide.

---

## Purpose of technical notes

Technical Notes exist to:

- Formalize core metrics, mechanisms, and frameworks
- Make assumptions explicit and inspectable
- Provide stable, citable definitions
- Support rigorous review and governance
- Anchor conceptual documentation in formal reasoning

They are not tutorials, guides, or summaries. Readers should consult them when precision matters.

---

## How to use this section

Use Technical Notes when you need to:

- Verify the formal definition of a metric or mechanism
- Understand mathematical assumptions and constraints
- Reference a stable definition for review or audit
- Connect high-level concepts to formal grounding

For conceptual explanations or workflows, refer to **Concepts** and **Guides** instead.

---

## Available technical notes

### Cost-Weighted Service Loss (CWSL)

**Scope**  
Defines the Cost-Weighted Service Loss metric, including its mathematical structure, weighting scheme, and aggregation properties.

**What it establishes**
- Formal definition of asymmetric cost–aware loss
- Directional error weighting framework
- Properties and interpretation boundaries

**When to read**
- When validating metric behavior
- When reviewing cost asymmetry assumptions
- When citing or extending CWSL formally

**Source**  
Authoritative source lives in the `eb-papers` repository under the CWSL technical note.

Related docs:
- **[CWSL Metrics Overview](../metrics/cwsl/)**
- **[Asymmetric Cost](../concepts/asymmetric-cost/)**

---

### Readiness Adjustment Layer (RAL)

**Scope**  
Defines the Readiness Adjustment Layer, which contextualizes evaluation outputs prior to decisioning.

**What it establishes**
- Formal separation of evaluation and readiness
- Adjustment mechanisms and constraints
- Stability and robustness considerations

**When to read**
- When assessing decision readiness
- When reviewing adjustment logic formally
- When integrating readiness into optimization workflows

**Source**  
Authoritative source lives in the `eb-papers` repository under the RAL technical note.

Related docs:
- **[Readiness and RAL](../concepts/readiness-and-ral/)**
- **[Optimization](../optimization/)**

---

### Demand Quantization and Constraints (DQC)

**Scope**  
Defines demand quantization mechanisms and constraints used to ensure evaluability and realism in forecasting outputs.

**What it establishes**
- Formal treatment of discrete demand
- Quantization rules and constraints
- Implications for evaluation and loss computation

**When to read**
- When working with low-volume or discrete demand
- When validating forecast realism assumptions
- When reviewing quantization impacts formally

**Source**  
Authoritative source lives in the `eb-papers` repository under the DQC technical note.

Related docs:
- **[Problem Framing](../concepts/problem-framing/)**
- **[Metrics](../metrics/)**

---

### Governance and Decision Integrity

**Scope**  
Defines governance principles that ensure decisions derived from evaluation remain traceable, reproducible, and defensible.

**What it establishes**
- Separation of evaluation, policy, and decisioning
- Versioning and auditability requirements
- Constraints on implicit or ad hoc decision logic

**When to read**
- When designing governance processes
- When reviewing decision traceability
- When auditing historical outcomes

**Source**  
Authoritative source lives in the `eb-papers` repository under the governance technical note.

Related docs:
- **[Governance](../concepts/governance/)**
- **[Policies](../optimization/policies/)**

---

## Status and evolution

Technical Notes may evolve over time, but changes are governed:

- Notes are versioned
- Prior definitions remain interpretable
- Documentation links refer to the appropriate canonical source
- Updates are intentional and reviewable

This section will be updated only when new Technical Notes are introduced or existing ones are formally revised.

---

## Where to go next

- For broader theoretical framing, see **[Research Papers](research-papers/)**  
- For conceptual explanations, see **[Concepts](../concepts/)**  
- For applied workflows, see **[Guides](../guides/)**  

Technical Notes are the backbone of Electric Barometer’s rigor. They exist to make the framework defensible, extensible, and trustworthy over time.
