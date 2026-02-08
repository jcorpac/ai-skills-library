---
name: git-hooks-automation
description: Using client-side Git hooks to automate testing and linting before code is shared.
---

# Git Hooks Automation

Git hooks are scripts that run automatically during specific stages of the Git workflow. They are the "first line of defense" for code quality.

## Key Hooks
- **`pre-commit`**: Run linters, formatters, and fast unit tests. Prevent low-quality code from ever being committed.
- **`commit-msg`**: Verify that commit messages follow the Convention Commits standard.
- **`pre-push`**: Run integration tests or full test suites before code hits the shared repository.

## Tools
- **Husky (JS)**: The standard for Node.js projects.
- **pre-commit (Python/Multi)**: A multi-language framework for managing and maintaining multi-language pre-commit hooks.

## Best Practices
- **Keep them Fast**: Hooks should run in seconds. If a test suite takes minutes, move it to the CI server.
- **Standardized**: Share hook configurations in the repository so everyone on the team has the same checks.

