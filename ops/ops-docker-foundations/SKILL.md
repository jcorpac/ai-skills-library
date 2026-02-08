---
name: ops-docker-foundations
description: Mastering the container lifecycle and professional Dockerfile creation.
---

# Docker Foundations

Containers provide consistent environments across development and production.

## Image Layers
- **Caching**: Structure your `Dockerfile` to put static layers (like OS updates) at the top and changing layers (code) at the bottom to speed up rebuilds.
- **Images vs Containers**: An image is the blueprint; a container is the running instance.

## Professional Dockerfile
- **Base Images**: Use official, minimal images (e.g., `python:3.11-slim`).
- **Commands**: Master `RUN`, `COPY`, `WORKDIR`, `EXPOSE`, and `CMD`/`ENTRYPOINT`.

## Best Practices
- **Single Responsibility**: One service per container.
- **.dockerignore**: Exclude `node_modules`, `venv`, and `.git` to keep images small and secure.

