---
name: JS Modular Patterns
description: Scalable, maintainable, and framework-agnostic JavaScript logic for modern web applications.
---

# JS Modular Patterns

Organized JavaScript is the foundation of a predictable presentation layer. This skill focuses on patterns that scale without becoming "spaghetti code."

## Core Patterns
- **Module Pattern (ESM)**: Use `import`/`export` to keep code encapsulated and clear.
- **Event Delegation**: Attach listeners to a parent element to manage dynamic children efficiently.
- **State Management**: Use a simple "Store" pattern with Pub/Sub or `CustomEvent` for cross-component communication.

## API Integration
- **Fetch Wrapper**: Create a centralized utility for API calls with built-in error handling and auth headers.
- **Async/Await**: Use try/catch blocks for clean asynchronous flow.

## Best Practices
- **No Globals**: Keep everything inside modules or IIFEs.
- **Naming**: Functions should be verbs (`getData`, `updateUI`).
- **Composition**: Prefer small, single-purpose functions over large monoliths.
