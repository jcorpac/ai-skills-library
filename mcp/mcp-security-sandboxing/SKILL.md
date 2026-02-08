---
name: mcp-security-sandboxing
description: Implementing safe tool execution, resource isolation, and access control in MCP servers.
---

# MCP Security & Sandboxing

Allowing an AI to run code or access data is powerful but risky.

## Key Strategies
- **Least Privilege**: Only grant the server access to the data it explicitly needs.
- **Input Sanitization**: Treat all model outputs as untrusted user input.
- **Memory Isolation**: Run tools in ephemeral containers (Docker) or sandboxed environments (Pyodide).

## Safety Guards
- **Human-in-the-loop**: Require manual approval for destructive actions.
- **Rate Limiting**: Prevent abuse or expensive runaway processes.
- **Auditing**: Log every tool call and its output for review.

## Best Practices
- **Secrets**: Never hardcode API keys; use environment variables or secret managers.
- **Timeout**: Set strict limits on tool execution time.

