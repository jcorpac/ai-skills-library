---
name: MCP Deployment & Registry
description: Packaging, distributing, and connecting MCP servers to production environments.
---

# MCP Deployment & Registry

Making your MCP server available to users and other agents.

## Packaging
- **`uv`**: Using `uv` for ultra-fast, reproducible Python environments.
- **Docker**: Packaging the server as a container for cloud deployment (e.g., Google Cloud Run).

## Configuration
- **Claude Desktop**: Deploying via `claude_desktop_config.json`.
- **Remote Access**: Using SSE to host servers accessible over the internet with auth.

## Best Practices
- **Health Checks**: Implement a `/health` endpoint for remote servers.
- **Versioning**: Tag your Docker images to ensure stable client connections.
