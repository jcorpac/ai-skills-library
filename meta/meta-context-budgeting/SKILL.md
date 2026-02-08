---
name: meta-context-budgeting
description: Techniques for managing the context window limit in long-running AI agents.
---

# Meta-Context Budgeting

AI models have a "budget" (the context window). Every token you use leaves less room for reasoning.

## Budgeting Strategies
- **Purging**: Identifying and removing outdated logs, repetitive instructions, or completed task summaries once they are no longer needed.
- **Summarization**: Compressing long technical discussions into concise action points before proceeding to the next phase.
- **Priority Filtering**: Keeping "System Instructions" and "Foundational Constraints" at the highest priority, while ephemeral chat history is lower priority.

## Tools
- **Token Counters**: Using tools to monitor current usage.
- **Selective Retrieval**: Only fetching the most relevant "chunks" of a codebase or skill library.

## Best Practices
- **Clean State**: Occasionally starting a fresh session and only carrying over the "Essential State" (ADRs, current plan, critical constraints).

