---
name: sec-dependency-audit
description: Systematically audit project dependencies and CI/CD pipelines for supply chain vulnerabilities to mitigate A03:2025 Software Supply Chain Failures.
---

# Dependency Audit

This skill guides the AI in identifying and remediating vulnerabilities introduced through third-party dependencies, libraries, and build tools. This directly addresses **A03:2025 – Software Supply Chain Failures**.

## Usage

Use this skill when you need to evaluate the security posture of your project's dependencies or CI/CD pipelines.

**Example Triggers:**
* "Can you audit my `package.json` and help me fix the vulnerable dependencies?"
* "Review my GitHub Actions workflow for supply chain risks."
* "How do I update the outdated logging package that has a CVE?"

## Workflow

1.  **Tool Execution Verification:** Instruct the user to run context-appropriate auditing tools if they haven't already and provide the output.
    *   Node.js: `npm audit` or `yarn audit`
    *   Python: `pip-audit` or `safety`
    *   Overall/Containers: `trivy` or OWASP Dependency-Check
2.  **Result Analysis:** Parse the output of the auditing tools. Focus on High and Critical severity vulnerabilities.
3.  **Remediation Planning:**
    *   Identify the exact package, version, and the CVE associated with it.
    *   Determine if the vulnerability is in a direct dependency or a transitive dependency.
    *   Check for available patches (updated versions).
4.  **Actionable Fixes:** Provide the specific commands required to update the vulnerable packages safely (e.g., `npm update <package>`, modifying `requirements.txt`).
5.  **Pipeline Review:** Review CI/CD definitions (e.g., `.github/workflows`) for risks like:
    *   Using third-party actions pinned to mutable tags (e.g., `@v2`) instead of specific commit SHAs.
    *   Exposing secrets to untrusted forks or steps.

## Best Practices

*   Advocate for locking dependencies via lockfiles (`package-lock.json`, `poetry.lock`).
*   Encourage continuous monitoring using tools like Dependabot or Renovate.
