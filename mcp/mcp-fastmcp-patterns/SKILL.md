---
name: mcp-fastmcp-patterns
description: Rapidly building production-grade MCP servers using the FastMCP framework.
---

# MCP FastMCP Patterns

FastMCP is the "FastAPI of MCP." It simplifies tool and resource registration.

## Core Patterns
- **Decorators**: Using `@mcp.tool()` and `@mcp.resource()` for declaration.
- **Auto-Schema**: FastMCP automatically generates JSON Schema from Python type hints and docstrings.
- **Dependency Injection**: Managing shared resources (e.g., DB connections) within the server instance.

## Workflow
1.  **Define**: Create your server class.
2.  **Register**: Decorate your functions.
3.  **Run**: Start the server using `mcp.run()`.

## Best Practices
- **Type Safety**: Lean on Pydantic models for complex inputs.
- **Modularization**: Split large servers into multiple files using routers.

