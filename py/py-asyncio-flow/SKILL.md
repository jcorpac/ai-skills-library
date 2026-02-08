---
name: py-asyncio-flow
description: Mastering asynchronous programming patterns for high-concurrency Python applications.
---

# Python AsyncIO Flow

`asyncio` allows Python to handle thousands of concurrent connections efficiently. This skill avoids common pitfalls like blocking the event loop.

## Core Concepts
- **Awaitables**: Coroutines, Tasks, and Futures.
- **The Event Loop**: The engine that drives async execution.
- **Running Concurrently**: Using `asyncio.gather()` or `asyncio.TaskGroup`.

## The "Golden Rule"
**Never run blocking code in an async function.**
Use `run_in_executor()` for CPU-bound or blocking I/O (like standard `requests`) if async alternatives (like `httpx` or `aiohttp`) are unavailable.

## Best Practices
- **Timeouts**: Always use `asyncio.wait_for()` to prevent hung tasks.
- **Graceful Shutdown**: Handle `CancelledError` for clean exits.
- **Context Managers**: Use `async with` for resources like database connections.

