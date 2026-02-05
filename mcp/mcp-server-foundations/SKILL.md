---
name: MCP Server Foundations
description: Understanding the architecture, lifecycle, and transports of the Model Context Protocol (MCP).
---

# MCP Server Foundations

The Model Context Protocol (MCP) is the standard for connecting AI models to external tools and data.

## Architecture
- **Host**: The application (like Claude Desktop) that initiates the connection.
- **Server**: The adapter providing tools, resources, or prompts.
- **Client**: The model's interface within the host.

## Transports
- **STDIO**: Standard input/output for local processes.
- **SSE (Server-Sent Events)**: For remote servers over HTTP.

## Lifecycle
1.  **Initialization**: Capabilities negotiation.
2.  **Interaction**: Tool calls, resource reads.
3.  **Shutdown**: Cleanly closing connections.

## Best Practices
- **Graceful Error Handling**: Returning clear error messages instead of crashing.
- **Resource Management**: Efficiently closing file handles and network sockets.
