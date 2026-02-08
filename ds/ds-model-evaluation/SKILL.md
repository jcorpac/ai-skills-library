---
name: ds-model-evaluation
description: Holistic strategies for evaluating model performance beyond simple accuracy.
---

# Model Evaluation

A model is only as good as your measurement of its performance. This skill ensures you use the right metrics for your data distribution.

## Classification Metrics
- **Imbalanced Data**: Use F1-Score, Precision-Recall AUC, or Balanced Accuracy instead of pure Accuracy.
- **Cost of Mistakes**: Use Recall if false negatives are expensive (e.g., medical diagnosis). Use Precision if false positives are expensive (e.g., spam filtering).

## Regression Metrics
- **MAE**: Mean Absolute Error (Robust to outliers).
- **RMSE**: Root Mean Squared Error (Penalizes large errors heavily).
- **R-Squared**: Explains the variance captured by the model.

## Validation Strategies
- **K-Fold**: Standard for robustness.
- **Stratified K-Fold**: Essential for imbalanced classification.
- **Time-Series Split**: Mandatory for data with a temporal component to avoid looking into the future.

