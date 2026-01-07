# Release Process

Releases define how changes become official, discoverable, and reproducible across the Electric Barometer ecosystem. A clear release process ensures that code, documentation, and research artifacts remain aligned while preserving traceability and governance.

This guide describes the release philosophy and high-level process used across Electric Barometer repositories.

---

## Why releases matter

In a multi-repository ecosystem, releases are more than version numbers. They serve as:

- Stable reference points for evaluation and decisioning
- Anchors for documentation and research artifacts
- Mechanisms for reproducibility and auditability
- Signals of maturity and intent

Without a disciplined release process, changes become difficult to track, explain, or reproduce.

---

## Release principles

Electric Barometer releases follow a small set of guiding principles:

- **Explicit versioning** — changes are introduced intentionally and visibly
- **Reproducibility** — released artifacts can be rebuilt or referenced consistently
- **Traceability** — decisions can be linked to the versions in use at the time
- **Minimal coupling** — repositories are versioned independently
- **Documentation alignment** — releases correspond to documented behavior

These principles apply across code, documentation, and papers.

---

## What constitutes a release

A release represents a coherent set of changes that are intended for use.

Depending on the repository, a release may include:

- Code changes and new functionality
- Updated documentation or guides
- Schema or contract updates
- Bug fixes or performance improvements
- Formal research artifacts (e.g., compiled papers)

Not all commits warrant a release. Releases mark meaningful checkpoints.

---

## Versioning strategy

Electric Barometer repositories use semantic-style versioning to communicate change intent.

At a high level:

- **Major versions** introduce breaking changes or conceptual shifts
- **Minor versions** add functionality in a backward-compatible way
- **Patch versions** fix bugs or clarify behavior without altering interfaces

Version numbers are part of the governance signal and should be chosen deliberately.

---

## Releasing code repositories

For code repositories, the release process typically involves:

1. Ensuring the main branch reflects the intended release state
2. Running tests and validation checks
3. Updating documentation where necessary
4. Creating a version tag
5. Publishing the release through the hosting platform

The release tag serves as the canonical reference point for consumers and downstream systems.

---

## Releasing documentation

Documentation changes may be released independently of code, but should remain consistent with released behavior.

Best practices include:

- Updating documentation before or alongside a code release
- Avoiding references to unreleased features
- Using versioned links where appropriate
- Treating documentation as a first-class artifact

Documentation releases reinforce trust in the ecosystem.

---

## Releasing research artifacts

Technical notes and papers follow a similar philosophy but differ in format.

Releases for research artifacts typically include:

- Compiled documents (e.g., PDFs)
- Versioned release tags
- Immutable artifacts attached to the release

This approach ensures that formal definitions and analyses remain stable and citable.

---

## Coordinating releases across repositories

Electric Barometer repositories are intentionally decoupled. Not all releases need to be synchronized.

Coordination is recommended when:

- Changes affect shared contracts or schemas
- A new concept or metric spans multiple repositories
- Documentation relies on behavior introduced in multiple places

In these cases, releases should reference one another explicitly to preserve clarity.

---

## Governance and change control

Releases are a governance mechanism.

Good governance practices include:

- Documenting the intent and scope of each release
- Avoiding silent or undocumented changes
- Preserving access to historical versions
- Clearly communicating breaking changes

A release should make it easier—not harder—to explain what changed and why.

---

## How releases fit into the Electric Barometer lifecycle

Within the Electric Barometer framework:

- Releases define the versions used in evaluation and decision workflows
- Documentation references released behavior
- Research artifacts formalize released concepts
- Governance relies on versioned artifacts for traceability

Releases provide the temporal structure that allows the ecosystem to evolve without losing coherence.

---

## Where to go next

- See **Packages** for repository-specific release details
- Review **Governance** to understand how releases support auditability
- Consult **Papers** for formally released definitions and analyses

A disciplined release process is essential to maintaining trust, reproducibility, and clarity across the Electric Barometer ecosystem.
