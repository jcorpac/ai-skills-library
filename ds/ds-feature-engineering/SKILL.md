---
name: Feature Engineering Studio
description: Advanced strategies for creating model-ready features while avoiding data leakage.
---

# Feature Engineering Studio

Feature engineering is often where the most significant model performance gains are found.

## Core Techniques
- **Encoding**: One-Hot (low cardinality) vs. Target Encoding (high cardinality).
- **Scaling**: StandardScaler (Gaussian data) vs. RobustScaler (data with outliers).
- **Binning**: Converting numerical values into categorical ranges (e.g., Age -> Age Group).
- **Interaction Terms**: Multiplying features together to capture combined effects.

## Safety: Avoiding Data Leakage
- **CRITICAL**: Never calculate scaling parameters (mean, std) on the test set.
- Fit your encoders/scalers ONLY on the training data and use them to transform both train and test.

## Scikit-Learn Pipeline Integration
Implement custom transformers using `BaseEstimator` and `TransformerMixin` for seamless integration into `sklearn.pipeline.Pipeline`.
