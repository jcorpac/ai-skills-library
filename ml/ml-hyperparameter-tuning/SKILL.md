---
name: ml-hyperparameter-tuning
description: Systematically finding the optimal model configuration to maximize performance.
---

# ML Hyperparameter Tuning

Tuning is the difference between an "okay" model and a "great" one.

## The Search Space
Identify which parameters have the most impact (e.g., `n_estimators`, `learning_rate`, `max_depth`).

## Methods
- **Grid Search**: Exhaustive search over a fixed grid. Reliable but slow.
- **Random Search**: Random sampling of the space. Often better than grid search for fewer iterations.
- **Bayesian Optimization (Optuna)**: Uses previous trials to inform the next search. The state-of-the-art for ML tuning.

## Best Practices
- **Pruning**: Stop poor-performing trials to save time.
- **Nested Cross-Validation**: To avoid overfitting the hyperparameters themselves.

