---
name: directory-federation
description: Architecting MCP routers as zero-execution metadata directories to offload tool execution onto the client.
---

# directory-federation

## Purpose
Traditional MCP "routers" act as a middleman that receives a tool execution request, proxies it to the subordinate server, and proxies the result back. This creates execution bottlenecks, limits streaming potential, and drastically increases attack surface. 

Federating the router into a pure **Directory** shifts the execution back to the client.

## Usage

Instead of wrapping subordinate tools inside your router, expose a *single* meta-tool that returns connection strings to the agents.

```python
from mcp.server.fastmcp import FastMCP
mcp = FastMCP("Directory Service")

@mcp.tool()
def search_available_tools_and_servers(query: str) -> list[dict]:
    """Allows the agent to query for tools and get their direct connection details."""
    # Database logic returning SSE URLs or Stdio command definitions 
    return [
        {
            "tool_name": "search_wikipedia",
            "server_transport": "stdio",
            "command": "docker run -i --rm mcp/wikipedia-mcp"
        }
    ]
```

When an agent needs a tool, it first queries the directory, gets the connection string, instantiates a direct MCP client to the target server, and runs the tool natively. It is a highly robust and scalable architecture.

## Resources
- MCP Specification (Transports)
