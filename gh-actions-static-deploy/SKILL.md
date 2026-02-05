---
name: GitHub Actions Static Deploy
description: Automating the build and deployment of static sites on every push.
---

# GitHub Actions Static Deploy

Ensure your showcase is always in sync with your source code.

## Workflow Configuration
- **Triggers**: Trigger on every `push` to the `master` or `main` branch.
- **Permissions**: Grant `contents: write` or use the dedicated `pages` deployment token.

## Essential Steps
1.  **Checkout**: Use `actions/checkout`.
2.  **Build**: (Optional) Run minification or bundling scripts.
3.  **Deploy**: Use the `peaceiris/actions-gh-pages` action to push the static folder to the `gh-pages` branch.

## Best Practices
- **Custom Domain CNAME**: Ensure your `CNAME` file is included in the build/deployment folder to prevent domain resets.
- **Build Notifications**: Notify a Slack or Discord channel on successful or failed deployments.
