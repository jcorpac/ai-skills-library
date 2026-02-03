---
name: Flask Foundations
description: Professional application architecture using the Factory Pattern and Blueprints in Flask.
---

# Flask Foundations

Flask is a micro-framework, but professional applications require structure to remain maintainable.

## Application Factory Pattern
Avoid global `app` objects. Instead, use a function to create the application instance.
- **Benefits**: Easier testing (multiple app instances), better configuration management, and avoidance of circular imports.
- **Pattern**: `def create_app(config_class=Config): ...`

## Blueprints
Organize your application into distinct components (e.g., `auth`, `api`, `main`).
- **Registration**: `app.register_blueprint(auth_bp, url_prefix='/auth')`
- **Utility**: Keeps codebases modular and allows for shared middleware/filters per component.

## Best Practices
- **Environment Config**: Use a `Config` class and `python-dotenv` for sensitive keys.
- **Lifecycle**: Understand `before_request`, `after_request`, and `teardown_appcontext`.
