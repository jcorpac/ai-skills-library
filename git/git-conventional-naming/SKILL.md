---
name: Git Conventional Naming
description: Implementing the Conventional Commits specification for structured and machine-readable commit messages.
---

# Git Conventional Naming

Standardizing commit messages makes history searchable and allows for automated changelog generation.

## Format
`<type>[optional scope]: <description>`

## Common Types
- **`feat`**: A new feature for the user.
- **`fix`**: A bug fix for the user.
- **`docs`**: Documentation only changes.
- **`style`**: Changes that do not affect the meaning of the code (white-space, formatting).
- **`refactor`**: A code change that neither fixes a bug nor adds a feature.
- **`perf`**: A code change that improves performance.
- **`test`**: Adding missing tests or correcting existing tests.
- **`chore`**: Changes to the build process or auxiliary tools and libraries.

## Examples
- `feat(api): add user authentication endpoint`
- `fix(ui): resolve alignment issue on mobile header`
- `docs: update deployment instructions`

## Value
Automatically generate release notes and version numbers based on the commit history.
