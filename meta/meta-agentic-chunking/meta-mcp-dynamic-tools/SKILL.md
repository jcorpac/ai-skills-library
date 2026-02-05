---
name: Meta-MCP Dynamic Tools
description: Using the Model Context Protocol to dynamically manage agent capabilities and context.
---

# Meta-MCP Dynamic Tools

MCP allows for an "App Store" of capabilities that can be loaded on demand.

## Dynamic Patterns
- **Directory Browsing**: Using an MCP server to show the model what skills or tools are *available* without loading their implementation.
- **Lazy Loading**: Only enabling a specific MCP server/tool when the model expresses a need for it.
- **Dynamic Context Injection**: A tool that reads a skill file and injects its content into the prompt *only when called*.

## Integration
- **Server Discovery**: Using `list_resources` to see what information is available before requesting it.
- **Selective Tooling**: Filtering the list of tools presented to the model based on the current task phase.

## Best Practices
- **Tool Descriptions**: Ensure tool descriptions specify *which* skill domains they support.
- **Permission Scoping**: Restrict MCP tool access to only the resources needed for the current chunk.
