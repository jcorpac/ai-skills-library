---
name: API Documentation Expert
description: Professional API documentation strategies using docstrings, OpenAPI, and automated generators.
---

# API Documentation Expert

API documentation is a contract between you and your consumers. It must be accurate, machine-readable, and easy to browse.

## Docstring Standards
Consistently use a standard docstring format for your language:
- **Python**: Google Style or NumPy Style.
- **JavaScript**: JSDoc.
- **Java**: Javadoc.

## OpenAPI & Swagger
For REST APIs, use OpenAPI (formerly Swagger) to define your endpoints.
- **Benefits**: Generates interactive documentation (Swagger UI), client SDKs, and automated tests.

## Automated Generators
Use tools to extract documentation directly from your code:
- **Python**: `Sphinx` (for general docs) or `FastAPI` (automatically generates OpenAPI).
- **JavaScript**: `TypeDoc` (for TypeScript) or `Doxygen`.

## Best Practices
1. **Explain the Why**: Don't just list parameters; explain *why* a user would call this endpoint.
2. **Include Examples**: provide sample requests and responses.
3. **Keep it Synced**: Use CI checks to ensure your documentation matches your actual API implementation.
