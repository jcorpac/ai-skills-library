---
name: ML Feature Store Basics
description: Decoupling feature engineering from model logic to ensure consistency between training and serving.
---

# ML Feature Store Basics

The "Feature Store" is the bridge between data engineering and machine learning.

## The Problem
"Training-Serving Skew": When the logic used to create features for training differs from the logic used in production.

## Core Pillars
- **Offline Store**: For batch training on historical data.
- **Online Store**: Low-latency storage for real-time inference.
- **Registry**: A central catalog of feature definitions.

## Tools
- **Feast**: The most popular open-source feature store.
- **Tecton**: A managed, enterprise-grade feature platform.

## Best Practices
- **Point-in-Time Correctness**: Prevent leakage by only joining features as they existed at a specific timestamp.
- **Reusability**: Shared features across multiple models.
