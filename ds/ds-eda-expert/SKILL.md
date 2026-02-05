---
name: EDA Expert
description: Systematic Exploratory Data Analysis (EDA) patterns to uncover insights and data quality issues early.
---

# EDA Expert

Exploratory Data Analysis is the critical first step in any data project. This skill ensures you never miss a hidden distribution or a correlation.

## The EDA Checklist
- [ ] **Shape & Types**: Check `df.info()` and `df.shape`.
- [ ] **Missingness**: Identify null patterns (random vs. systematic).
- [ ] **Univariate Analysis**: Plot distributions (histograms, boxplots) for all key variables.
- [ ] **Bivariate Analysis**: Scatter plots for target vs. features; correlation heatmaps.
- [ ] **Cardinality**: Check unique counts for categorical features.
- [ ] **Data Drift**: If multiple timeframes exist, compare distributions across them.

## Visualization Libraries
- **Seaborn**: Best for statistical relationship plots.
- **Plotly**: Best for interactive exploration.
- **Matplotlib**: Best for fine-grained control.

## Usage
Use the templates in `resources/` to jumpstart a Jupyter notebook EDA session.
