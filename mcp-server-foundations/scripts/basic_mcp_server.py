from mcp.server.fastmcp import FastMCP

# Create an MCP server
mcp = FastMCP("Starter Server")

@mcp.tool()
async def hello_world(name: str = "World") -> str:
    """A simple tool that says hello."""
    return f"Hello, {name}!"

@mcp.resource("echo://{text}")
def echo_resource(text: str) -> str:
    """A simple resource that echoes back the text in the URI."""
    return f"You requested: {text}"

if __name__ == "__main__":
    # Run the server using stdio by default
    mcp.run()
