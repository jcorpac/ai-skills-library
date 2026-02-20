---
name: sec-config-auditor
description: Review infrastructure and deployment configuration files (Docker, Kubernetes, NGINX, Cloud IAM) for Security Misconfigurations (A02:2025) and Logging Failures (A09:2025).
---

# Configuration Auditor

This skill focuses on the security of the infrastructure and deployment environment, specifically targeting **A02:2025 – Security Misconfiguration** and **A09:2025 – Security Logging & Alerting Failures**.

## Usage

Triggers when reviewing infrastructure-as-code (IaC), reverse proxy settings, container configurations, or environment variable templates.

**Example Triggers:**
* "Can you audit my `Dockerfile` and `docker-compose.yml` for security best practices?"
* "Review my NGINX configuration. Are my security headers correct?"
* "Check these Kubernetes manifests for any overly permissive role bindings."

## Workflow

When analyzing configuration files, the AI should check against the following hardening checklists:

### Docker / Containerization
*   Is it running as `root`? (Require `USER nonroot`).
*   Are unnecessary ports exposed?
*   Is it using outdated base images? Ensure specific, minimal base tags (e.g., `alpine`, `slim`).
*   Are secrets hardcoded in the Dockerfile? (Require Docker Secrets or environment variables at runtime).

### Web Servers / Reverse Proxies (NGINX, Apache)
*   Are necessary HTTP security headers present? (HSTS, Content-Security-Policy, X-Frame-Options, X-Content-Type-Options).
*   Is directory listing disabled?
*   Are verbose error messages or server tokens exposed?
*   Are TLS configurations using modern, secure cipher suites?

### Cloud / Kubernetes (IaC)
*   Apply the Principle of Least Privilege: Do service accounts or IAM roles have full `*` permissions?
*   Are cloud storage buckets publicly exposed by accident?
*   Are network policies restricting lateral movement?

### Logging and Monitoring (A09)
*   Are critical authentication boundaries logged (login success/failure, role changes)?
*   Are logs configured to be stored centrally and securely?
