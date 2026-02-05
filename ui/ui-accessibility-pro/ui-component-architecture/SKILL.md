---
name: UI Component Architecture
description: A blueprint for building reusable, encapsulated UI components using Vanilla JavaScript.
---

# UI Component Architecture

Encapsulation shouldn't require a framework. This skill provides a pattern for building reusable components that are easy to drop into any project.

## The Component Pattern
1.  **The Template**: A function that returns HTML as a template literal.
2.  **The Styles**: Encapsulated CSS (often using scoped selectors or Shadow DOM).
3.  **The Logic**: An init function that sets up listeners and internal state.

## Folder Structure
```text
components/
└── Card/
    ├── index.js     # Component logic & template
    └── style.css    # Scoped styles
```

## Best Practices
- **Props**: Pass data into components via function arguments.
- **Events**: Components should communicate with the app by dispatching custom events.
- **Cleanup**: Provide a way to "destroy" or "unmount" a component to prevent memory leaks.
