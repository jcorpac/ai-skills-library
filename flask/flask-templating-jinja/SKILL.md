---
name: flask-templating-jinja
description: Mastering server-side rendering with Jinja2 layouts, macros, and filters.
---

# Flask Templating (Jinja2)

The front-end begins with the server. Jinja2 provides the power to build dynamic, reusable HTML.

## Pattern & Inheritance
- **Base Layout**: Use `base.html` for common headers, footers, and styles.
- **Block Inheritance**: Use `{% block content %}` to allow child templates to inject their specific content.

## Reusability
- **Macros**: Like functions for HTML (e.g., a reusable button or form field).
- **Includes**: Component-level reusability for navigation bars or sidebars.

## Logic & Context
- **Control Flow**: `{% if user.is_authenticated %}`, `{% for item in items %}`.
- **Filters**: Formatting data directly in the template (e.g., `{{ date|format_date }}`).

## Best Practices
- **Never Render Raw HTML**: Ensure variables are escaped to prevent XSS.
- **Logic Placement**: Keep complex calculations in Python, and only use templating for display logic.

