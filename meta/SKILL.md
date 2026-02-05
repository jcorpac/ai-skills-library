---
name: Meta-Agentic Chunking
description: Breaking complex tasks into discrete sub-steps with isolated context for maximum precision.
---

# Meta-Agentic Chunking

Complex tasks often fail because the model tries to handle too much complexity at once.

## The Chunking Workflow
1.  **Decomposition**: Breaking the user objective into small, independent sub-tasks.
2.  **Context Isolation**: For each sub-task, only load the files and skills relevant to *that specific step*.
3.  **Handoff**: Passing only the *results* of the sub-task to the next step, rather than the entire execution history.

## Benefits
- **Reduced Hallucinations**: Smaller context means fewer distractions.
- **Higher Fidelity**: The model can follow specific instructions for a single phase (e.g., "Refactoring") without being distracted by requirements from another phase (e.g., "Deployment").

## Best Practices
- **Clear Boundaries**: Use `task_boundary` tools to signify the switch between chunks.
- **State Persistence**: Keep a "Source of Truth" document (e.g., a `plan.md`) that tracks the results of all chunks.
