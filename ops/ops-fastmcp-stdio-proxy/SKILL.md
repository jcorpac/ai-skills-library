---
name: fastmcp-stdio-proxy
description: Techniques for running FastMCP over stdio within detached Docker containers and proxying to peer containers.
---

# fastmcp-stdio-proxy

## Purpose
Routing tools via FastMCP requires a persistent `stdio` connection. Running an MCP application in a detached Docker container causes an immediate exit because it hits an EOF on standard input. Furthermore, an MCP router container needs a way to invoke *other* MCP containers via `stdio` locally without exposing network layers.

## Usage

### 1. Keeping FastMCP Alive in Docker Detached Mode
When using `docker-compose up -d`, add `stdin_open` and `tty` to the service definition. This tricks FastMCP's stdio listener into staying alive in the background:

```yaml
services:
  mcp-router:
    build: .
    stdin_open: true
    tty: true
```

### 2. The Docker-in-Docker Socket Proxy hack 
If your containerized MCP Router needs to discover and spawn peer MCP servers using the `stdio` transport, it cannot natively launch them. Give the router access to the host's Docker engine:

**docker-compose.yml:**
```yaml
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
```

**Dockerfile:**
Install the Docker CLI so the python execution environment can call the socket over the OS layer:
```dockerfile
RUN apt-get update && apt-get install -y docker.io
```

You can now use `stdio_client` with `docker run -i --rm <target-image>` inside your python router logic!

## Resources
- FastMCP Stdio Transport Specs
- Docker Engine API
