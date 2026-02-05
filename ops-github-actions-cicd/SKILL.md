---
name: GitHub Actions CI/CD
description: Professional automation for testing, linting, and deployment using GitHub Actions.
---

# GitHub Actions CI/CD

Automate your developer workflow directly inside GitHub.

## Workflow Basics
- **Triggers**: `on: [push, pull_request]`.
- **Jobs & Steps**: Breaking automation into logical units (e.g., `test`, `lint`, `build`).

## Essential Actions
- **Setup**: `actions/setup-python`, `actions/checkout`.
- **Caching**: `actions/cache` to speed up dependency installation.

## Secrets & Environments
- **Security**: Store API keys and production secrets in GitHub Secrets.
- **Environments**: Use `environment: production` for manual approvals and deployment tracking.

## Best Practices
- **Matrix Builds**: Test across multiple Python versions or OSs simultaneously.
- **Linters**: Run `ruff` or `flake8` on every PR to maintain code quality.
