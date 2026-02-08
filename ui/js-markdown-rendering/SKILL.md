---
name: js-markdown-rendering
description: Dynamically fetching and rendering markdown content in the browser.
---

# JS Markdown Rendering

By rendering markdown in the browser, you can maintain a single `index.html` while serving dozens of dynamic "pages."

## Core Workflow
1.  **Fetching**: Use the `fetch()` API to retrieve `.md` files from relative paths.
2.  **Parsing**: Use a lightweight parser like `marked.js` to convert markdown strings to HTML.
3.  **Injection**: Set the `innerHTML` of a container element to display the result.

## Performance
- **Lazy Fetching**: Only load the markdown file when the user clicks its link.
- **Syntax Highlighting**: Use `Prism.js` or `Highlight.js` for beautiful code snippets.

## Best Practices
- **Routing**: Sync the rendered content with the URL hash (e.g., `#/git-mastery/atomic-commits`).
- **Escaping**: Ensure untrusted markdown is sanitized if coming from external sources.

