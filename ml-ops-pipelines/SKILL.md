---
name: ML Ops Pipelines
description: Orchestrating the end-to-end Machine Learning lifecycle with robust, reproducible pipelines.
---

# ML Ops Pipelines

ML is not code; it's code + data. Pipelines ensure that your training and deployment are predictable.

## The Workflow
1.  **Ingestion**: Loading data from sources.
2.  **Validation**: Checking data quality (TFX, Great Expectations).
3.  **Transformation**: Feature engineering.
4.  **Training**: Model creation.
5.  **Deployment**: Pushing to the model registry or serving layer.

## Tools
- **ZenML**: A framework-agnostic MLOps pipeline tool.
- **Kubeflow**: Running ML workflows on Kubernetes.
- **GitHub Actions**: For simple, CI-based ML pipelines.

## Best Practices
- **Versioning**: Version your data AND your code.
- **Automated Retraining**: Trigger pipelines when data drift is detected.
