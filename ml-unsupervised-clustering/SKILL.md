---
name: ML Unsupervised Clustering
description: Discovering patterns in unlabeled data using clustering and dimensionality reduction.
---

# ML Unsupervised Clustering

Unsupervised learning finds hidden structures in data without explicit labels.

## Core Techniques
- **K-Means**: Simple and effective for spherical clusters. Use the "Elbow Method" to find the optimal `k`.
- **DBSCAN**: Density-based clustering that can handle irregular shapes and noise.
- **PCA (Principal Component Analysis)**: Reducing feature space while retaining variance. Essential for visualization and avoiding the "curse of dimensionality."

## Evaluation Metrics
Since there are no labels, we use:
- **Silhouette Score**: Measuring cluster separation and cohesion.
- **Inertia**: Sum of squared distances to cluster centers.

## Best Practices
- **Feature Scaling**: Essential for distance-based algorithms like K-Means.
- **Interpretablity**: Plot your results (e.g., using t-SNE or UMAP for high-dimensional data).
