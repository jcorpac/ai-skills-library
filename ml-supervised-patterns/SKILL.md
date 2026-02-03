---
name: ML Supervised Patterns
description: Professional patterns for supervised learning pipelines, including classification and regression.
---

# ML Supervised Patterns

Supervised learning is the core of predictive modeling. This skill focuses on building robust, scalable pipelines using Scikit-Learn.

## Pipeline Architecture
1.  **Imputation**: Handling missing values (`SimpleImputer`).
2.  **Encoding**: Transforming categorical data (`OneHotEncoder`).
3.  **Scaling**: Normalizing numerical features (`StandardScaler`).
4.  **Estimator**: The model (e.g., `RandomForestClassifier`, `XGBRegressor`).

## Best Practices
- **Never Leak Data**: Split into train/test before any preprocessing.
- **Cross-Validation**: Use `cross_val_score` or `GridSearchCV` to ensure generalization.
- **Fairness**: Check for bias in training data.

## Tools
- `Scikit-Learn`: The industry standard for tabular data.
- `XGBoost` / `LightGBM`: High-performance gradient boosting.
