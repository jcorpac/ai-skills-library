---
name: flask-assets-management
description: Professional pipelines for CSS, JS, and image management in Flask applications.
---

# Flask Assets Management

A modern web app requires optimized delivery of static files.

## Asset Bundling
- **Flask-Assets**: Minifying and combining CSS/JS files into single bundles.
- **Filters**: Compiling SCSS/LESS or transpiling modern JS.

## Modern Hybrid Workflows
Using a modern bundler like **Vite** or **Webpack** alongside Flask.
- **Manifests**: Dynamically linking to hashed asset filenames for cache busting.
- **Dev-Server Proxying**: Seamlessly combining a JS dev server with the Flask back-end.

## Best Practices
- **Cache Busting**: Always append versions or hashes to static URLs in production.
- **CDNs**: Serve static assets via a CDN (CloudFront, Cloudflare) for production.

