# Getting Started

This page walks through the minimal steps required to understand and use the
Electric Barometer ecosystem.

Electric Barometer is not a single library, but a coordinated set of packages
that work together to evaluate and select forecasts under asymmetric,
operationally meaningful cost structures.

---

## Installation

Each Electric Barometer package is installed independently.

At a minimum, you will typically need:

    pip install eb-metrics eb-evaluation eb-adapters

Optional forecasting libraries (such as Prophet, LightGBM, CatBoost, or
statsmodels) can be installed as needed depending on which adapters you intend
to use.

---

## Core idea

Electric Barometer separates **forecast generation** from **forecast selection**.

You may have multiple competing forecasts for the same problem:
- different models
- different hyperparameters
- different training regimes

Electric Barometer does not create these forecasts. Instead, it helps answer:

> *Which forecast should I deploy, given the real costs of being wrong?*

This is done by:
1. Defining cost-aware loss functions
2. Evaluating candidate forecasts under those losses
3. Selecting the forecast that best aligns with operational objectives

---

## Minimal workflow

At a high level, a typical workflow looks like:

1. Train or obtain one or more forecasting models
2. Wrap non-scikit-learn models using adapters (if needed)
3. Evaluate forecasts using cost-aware metrics
4. Select the most appropriate forecast for deployment

The exact mechanics depend on the evaluation strategy, but the interface remains
consistent.

---

## Adapters: normalizing model interfaces

Many forecasting libraries do not follow a scikit-learn-style API.
The **eb-adapters** package provides thin wrappers that normalize external models
to a common interface:

    model.fit(X, y)
    y_pred = model.predict(X)

This allows evaluation and selection code to treat all models uniformly, whether
they come from scikit-learn, Prophet, statsmodels, or gradient-boosted trees.

---

## Evaluation and selection

The **eb-evaluation** package provides utilities to compare forecasts under
custom loss functions.

Rather than optimizing for statistical accuracy alone, these utilities evaluate
how forecast errors translate into real operational costs, such as:
- waste
- stockouts
- service degradation
- labor inefficiency

The output of evaluation is typically a ranking or selection of candidate
forecasts, not a retrained model.

---

## Next steps

From here, you may want to:
- Explore the ecosystem documentation to understand how packages fit together
- Review the API documentation for individual packages
- Read the technical notes and papers that motivate the framework
- Apply Electric Barometer to an existing forecasting problem

Electric Barometer is designed to be introduced incrementally into existing
forecasting pipelines rather than replacing them wholesale.
