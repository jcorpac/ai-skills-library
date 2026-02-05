---
name: Docker Optimization
description: Techniques for creating tiny, fast, and secure production-grade images.
---

# Docker Optimization

Production images should be minimal, fast to pull, and secure.

## Multi-stage Builds
- **Pattern**: Use a heavy build image (with compilers/tools) and copy only the compiled artifacts to a tiny runtime image (e.g., `alpine`).
- **Benefit**: Reduces image size by up to 90% and removes build-time vulnerabilities.

## Layer Reduction
- **Chaining**: Chain `apt-get install` commands and clean up in the same `RUN` layer to avoid bloated images.

## Best Practices
- **Alpine & Distroless**: Use the smallest possible OS base.
- **Cache Mounting**: Use `--mount=type=cache` in BuildKit to persist pip/npm caches across builds.
