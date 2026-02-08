---
name: rs-error-excellence
description: Idiomatic patterns for robust, transparent, and recoverable error handling in Rust.
---

# Rust Error Excellence

Rust treats errors as values, not exceptions. This skill ensures your errors provide maximum context for developers and users.

## The `Result<T, E>` Pattern
Always return `Result` for functions that can fail. Use the `?` operator to propagate errors up the stack.

## Crate Selection
- **`anyhow`**: Best for **applications**. It provides a flexible, easy-to-use error type for top-level handling.
- **`thiserror`**: Best for **libraries**. It allows you to define custom, derive-based error enums that users can match against.

## Best Practices
- **Context**: Use `.with_context(|| ...)` in Anyhow to add human-readable breadcrumbs to errors.
- **Avoid Panics**: Use `unwrap()` and `expect()` ONLY in tests or when you can prove an invariant is impossible to break.
- **Custom Errors**: Define domain-specific error enums for complex logic.

