---
name: mcp-tool-design
description: Engineering robust, self-describing, and error-resilient tools for AI models.
---

# MCP Tool Design

A tool is only as good as its description. AI models depend on clear `JSON Schema` to function.

## Tool Definition
- **Name**: Concise, snake_case (e.g., `calculate_risk_score`).
- **Description**: Detailed explanation of *what* the tool does and *when* to use it.
- **Input Schema**: Strict types and required fields using JSON Schema.

## Execution Logic
- **Safety**: Validate inputs before processing.
- **Feedback**: Provide verbose success messages or actionable error reports.
- **Idempotency**: Ensure running the tool multiple times with the same input has predictable results.

## Best Practices
- **Schema Evolution**: Maintain backward compatibility.
- **Context-Awareness**: Use tools to supplement the model's knowledge, not replace its reasoning.

