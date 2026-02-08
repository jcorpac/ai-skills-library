---
name: py-packaging-pro
description: Modern standards for professional Python project configuration, dependency management, and distribution.
---

# Python Packaging Pro

Modern Python packaging revolves around `pyproject.toml`. This skill ensures your projects are reproducible and ready for distribution.

## The Modern Stack
- **Build System**: Use `poetry` or `uv` for dependency management.
- **Metadata**: Configure everything in `pyproject.toml`.
- **Environment**: Use strictly pinned lock files (`poetry.lock`).

## Project Structure
```text
project/
├── pyproject.toml
├── README.md
├── src/
│   └── project_name/
├── tests/
└── .github/workflows/  # CI/CD for testing and publishing
```

## Best Practices
- **Explicit Dependencies**: Separate `main` and `dev` dependencies.
- **Type Checking**: Include `mypy` in your CI pipeline.
- **versioning**: Follow Semantic Versioning (SemVer).

