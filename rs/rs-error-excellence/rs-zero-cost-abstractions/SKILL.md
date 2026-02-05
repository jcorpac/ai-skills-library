---
name: Rust Zero-Cost Abstractions
description: Leveraging Rust's advanced type system to build powerful abstractions without runtime overhead.
---

# Rust Zero-Cost Abstractions

"You don't pay for what you don't use." This skill covers building high-level interfaces that compile down to efficient machine code.

## Core Pillars
- **Traits**: Define shared behavior. Prefer `impl Trait` for static dispatch (fast) over `dyn Trait` (dynamic dispatch) unless polymorphism is required at runtime.
- **Generics**: Write code that works for many types using Trait Bounds to restrict functionality.
- **Macros**: Use declarative (`macro_rules!`) or procedural macros to generate boilerplate-free code at compile time.

## Advanced Patterns
- **Newtype Pattern**: Wrapping a type to add specific behavior or safety.
- **State Machine Pattern**: Using enums and ownership to enforce valid state transitions at compile time.
- **PhantomData**: Using types to mark data that isn't physically present.

## Value
These abstractions allow for "Fearless Refactoring" because the compiler enforces your design constraints strictly.
