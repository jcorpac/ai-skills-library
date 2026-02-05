---
name: Experiment Tracking
description: Patterns for maintaining reproducibility in machine learning experiments.
---

# Experiment Tracking

The goal of experiment tracking is to be able to recreate any model you've built by recording the environment, data, and parameters.

## What to Track
- **Metadata**: Date, Author, Git Hash.
- **Parameters**: Hyperparameters like `learning_rate` or `n_estimators`.
- **Artifacts**: Saved model files (`.pkl`, `.onnx`), feature importance plots.
- **Metrics**: Validation scores from your evaluation runs.

## Tools of the Trade
- **MLflow**: The industry standard for local/remote tracking.
- **Weights & Biases**: Best for deep learning and visualizations.
- **DVC**: For versioning the actual datasets.

## Implementation Pattern
Always use a centralized dictionary or YAML file to store your experiment config before running your training script.
