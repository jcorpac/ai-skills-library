---
name: gh-pages-foundations
description: Configuring and managing static hosting for documentation and portfolios.
---

# GitHub Pages Foundations

GitHub Pages is a static site hosting service that takes HTML, CSS, and JavaScript files directly from a repository on GitHub.

## Configuration
- **Source Selection**: Go to `Settings > Pages` to choose the branch and folder (`/root` or `/docs`) to deploy from.
- **Custom Domains**: Point your own domain to GitHub's servers by adding a `CNAME` file and configuring your DNS provider.

## Routing Strategies
- **Folder Structure**: Direct mapping of repository paths to URLs.
- **SPA Hack**: Using a `404.html` page to redirect all traffic to `index.html` for single-page applications.

## Best Practices
- **HTTPS Enforcement**: Always enable "Enforce HTTPS" in repository settings.
- **Minimal Dependencies**: Use as few external assets as possible to ensure fast loading and high compatibility.

