---
name: meta-recursive-discovery
description: Enabling agents to autonomously search for and adopt new specialized skills.
---

# Meta-Recursive Discovery

An agent should know what it doesn't know and where to find the answers.

## The Discovery Loop
1.  **Impediment Detection**: Identifying when a task requires a skill not currently in the active context.
2.  **Library Search**: Using search tools to look for specialized skills in the root directory.
3.  **Self-Correction**: Updating the current approach based on the found skill's instructions.

## Autonomous Improvement
- **Template Usage**: Using the `template-skill` to create *new* temporary skills when a unique problem is solved, effectively growing the library's wisdom over time.

## Best Practices
- **Documentation Hygiene**: Maintaining a clean index so discovery remains fast.
- **Verification**: Always cross-reference discovered skills with established best practices (e.g., ADRs).

