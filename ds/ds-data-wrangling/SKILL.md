---
name: ds-data-wrangling
description: Professional data cleaning, transformation, and pipeline optimization patterns using Pandas.
---

# Data Wrangling

Data cleaning often takes 80% of the time. This skill provides a structured approach to making that process more efficient and reproducible.

## Core Patterns

### 1. Robust Imputation
- Don't just fill with the mean. 
- Use group-specific medians for numerical data.
- Use 'unknown' or the mode for categorical data.

### 2. Memory Optimization
- Downcast numeric types (`float64` -> `float32`).
- Convert low-cardinality strings to `category` type.

### 3. Outlier Handling
- **Winsorization**: Capping extreme values at the 1st and 99th percentiles.
- **Z-Score Filter**: Removing values beyond 3 standard deviations.

## Best Practices
- **Method Chaining**: Use `.pipe()` and method chaining in Pandas for more readable code.
- **No Side Effects**: Always return a copy of the dataframe; don't modify in-place if possible.

