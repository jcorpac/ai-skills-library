---
name: Git Branching Flow
description: Choosing and implementing the right collaboration strategy for your team's development speed.
---

# Git Branching Flow

How your team branches determines how quickly and safely you can release software.

## Strategy 1: Trunk-Based Development
- **Workflow**: All developers commit to a single `main` branch multiple times a day.
- **Best For**: High-performing teams with robust CI/CD and automated testing.
- **Pros**: Reduces merge hell; moves faster.

## Strategy 2: Feature Branching (Gitflow-lite)
- **Workflow**: Create a branch for every feature or bug fix. Merge via Pull Request.
- **Best For**: Teams requiring formal code reviews or working on complex, long-running features.
- **Pros**: Protects the `main` branch; provides clear audit trails.

## Best Practices
- **Short-Lived Branches**: Features should be merged within 1-3 days.
- **Delete Merged Branches**: Keep the repository clean by removing branches once integrated.
- **Up-to-Date**: Regularly merge or rebase the target branch into your feature branch to stay current.
