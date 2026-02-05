---
name: Git Atomic Commits
description: Principles for making small, focused, and reversible changes to a repository.
---

# Git Atomic Commits

An "atomic" commit is a single unit of work. It does one thing and does it completely. This practice makes history easier to read and reverts safer to perform.

## Core Rules
1.  **Single Responsibility**: One commit = one feature, one bug fix, or one refactor.
2.  **Working State**: Every commit should leave the project in a buildable/testable state.
3.  **No "Mixed Bag" Commits**: Don't combine a bug fix with a new feature, or documentation with code changes.

## Tactics
- **Stage Hunks**: Use `git add -p` to interactively stage only the parts of a file that belong to the current unit of work.
- **Commit Early**: If you're working on a feature and find a small bug, commit your progress, fix the bug in a separate commit, then resume your feature work.

## Value
- **Simplified Reverts**: If a feature breaks something, you can revert just that commit without losing unrelated work.
- **Clear Reviews**: Pull requests with atomic commits are much easier for reviewers to follow and verify.
