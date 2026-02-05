---
name: Git History Polish
description: Advanced techniques for cleaning up and organizing your local history before pushing to a shared repository.
---

# Git History Polish

Your local history is your "draft." Before you push to a shared repository, you should polish it into a clean, narrative-driven sequence of commits.

## Tools
- **Interactive Rebase**: `git rebase -i <base>` allows you to rewrite your local history.
- **Squash**: Combine multiple small "wip" commits into a single atomic change.
- **Fixup**: Like squash, but discards the log message of the combined commit. Perfect for fixing typos or small errors found after a commit.
- **Rewording**: Edit the message of an old commit.

## The Rule of Public History
**NEVER rewrite history that has already been pushed to a shared branch.** Rebase/Squash only what is local or on a private feature branch.

## Value
A clean history makes it easy for future maintainers (including yourself) to understand *why* changes were made without wading through "WIP" noise.
