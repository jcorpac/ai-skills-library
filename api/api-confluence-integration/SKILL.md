---
name: api-confluence-integration
description: "Standardize and push strictly documented technical specs to Confluence."
---

# api-confluence-integration

## Purpose
Assists **Planningway** with the deployment of "Lunar-Approved" architecture specifications. Standardizes interaction with the `confluence_api` for managing, editing, and pushing markdown/HTML specifications to Confluence wikis.

## Usage
1. Draft the finalized architectural specification.
2. Interface with the `confluence_api` (if available) or generate a payload tailored for Confluence's REST integration.
3. Convert Markdown structures recursively to properly formatted Confluence Storage Format.
4. Maintain a structured archive of Architecture Design Records (ADRs) to satisfy the mandate for long-term project stability.

## Resources
- Confluence REST v2 API Docs
- Markdown-to-Confluence conversion templates
