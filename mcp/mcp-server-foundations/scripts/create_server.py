#!/usr/bin/env python3
# MCP Server Scaffolder
# rapidly creates a new FastMCP server project.

import os
import sys
import subprocess
from pathlib import Path

SIMPLE_SERVER_TEMPLATE = """
from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("{server_name}")

@mcp.tool()
def hello_world() -> str:
    \"\"\"A simple greeting tool to verify the server is working.\"\"\"
    return "Hello from {server_name}!"

if __name__ == "__main__":
    mcp.run()
"""

def create_mcp_server(project_name: str):
    root_dir = Path(os.getcwd()) / project_name
    
    if root_dir.exists():
        print(f"Error: Directory '{project_name}' already exists.")
        return

    print(f"Creating MCP Server: {project_name}...")
    
    # 1. Create Directory
    root_dir.mkdir(parents=True)
    
    # 2. Initialize with UV (if available) or generic setup
    try:
        subprocess.run(["uv", "init"], cwd=root_dir, check=True, capture_output=True)
        print("Initialized uv project.")
        
        # Add dependencies
        subprocess.run(["uv", "add", "mcp[cli]"], cwd=root_dir, check=True, capture_output=True)
        print("Added mcp dependency.")
        
    except (FileNotFoundError, subprocess.CalledProcessError):
        print("Warning: 'uv' not found or failed. Creating manual file structure.")
        # Fallback: Just create requirements.txt
        (root_dir / "requirements.txt").write_text("mcp[cli]\n")

    # 3. Create server.py
    server_code = SIMPLE_SERVER_TEMPLATE.format(server_name=project_name)
    (root_dir / "server.py").write_text(server_code.strip())
    
    print("\nServer Scaffolding Complete! 🚀")
    print(f"cd {project_name}")
    print("mcp dev server.py")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python create_server.py <project_name>")
        sys.exit(1)
        
    create_mcp_server(sys.argv[1])
