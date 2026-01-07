# Glossary

This glossary defines core terms used throughout the Electric Barometer ecosystem. The definitions here are conceptual and system-level, rather than implementation-specific. Where formal or mathematical definitions exist, they are provided in the relevant technical notes or papers.

The purpose of this glossary is to establish a shared vocabulary and reduce ambiguity across evaluation, decisioning, and governance discussions.

---

## Asymmetric Cost

A property of a decision problem in which different types or directions of error incur different consequences. In forecasting contexts, this often refers to situations where under-forecasting and over-forecasting have unequal operational or economic impact.

---

## Decision Regret

The realized cost or consequence of a decision made under uncertainty, relative to an alternative decision that could have been made with perfect information. Decision regret focuses on outcomes rather than prediction error alone.

---

## Decisioning

The process of selecting an action based on available information, evaluation results, and explicit policy. Decisioning is inherently normative and reflects organizational priorities, risk tolerance, and constraints.

---

## Evaluation

The process of measuring and comparing the behavior of forecasting systems relative to explicit criteria. Evaluation produces structured, reproducible measurements intended to inform decisioning, not replace it.

---

## Forecasting System

A combination of data inputs, feature transformations, models, and configurations that produces forecasts. In Electric Barometer, forecasting systems are evaluated and selected as whole systems rather than isolated models.

---

## Governance

The set of rules, policies, and controls that determine how evaluation results are interpreted, how decisions are made, and how those decisions are reviewed, audited, or revised over time.

---

## Metric

A quantitative measure used to summarize some aspect of forecasting system behavior. Metrics provide information for evaluation but do not, by themselves, encode decision policy.

---

## Operational Context

The real-world environment in which forecasts are used, including constraints, costs, timing, and downstream consequences. Operational context determines how forecast errors translate into impact.

---

## Policy

An explicit set of rules or preferences that govern how evaluation outputs are translated into decisions. Policies encode tradeoffs, priorities, and risk posture rather than technical performance alone.

---

## Reproducibility

The property that the same inputs, evaluation criteria, and decision policies yield the same results and decisions when applied consistently. Reproducibility is a core requirement for auditability and governance.

---

## Selection

The act of choosing one forecasting system or configuration from a set of evaluated alternatives, based on evaluation outputs and decision policy.

---

## Sensitivity

The degree to which evaluation outcomes or decisions change in response to variations in assumptions, parameters, or inputs. Sensitivity analysis helps reveal tradeoffs and robustness.

---

## Tie-breaking

A policy-driven mechanism for resolving situations in which multiple forecasting systems perform similarly under evaluation criteria. Tie-breaking rules prevent arbitrary or unstable decisions.

---

## Tradeoff

A situation in which improving performance along one dimension degrades performance along another. Tradeoffs are unavoidable in multi-objective decision problems and must be managed explicitly.

---

## Uncertainty

The inherent lack of certainty in future outcomes, forecasts, or system behavior. Uncertainty motivates the separation of evaluation from decisioning and the use of policy-driven choices.

---

## Workflow

An ordered sequence of stages through which data, forecasts, evaluations, and decisions flow. In Electric Barometer, workflows are designed to be explicit, reproducible, and inspectable.

---

## Readiness

A measure of how prepared a forecasting system or decision policy is to support operational action, considering risk, uncertainty, and cost. Readiness emphasizes suitability for use rather than raw performance.
