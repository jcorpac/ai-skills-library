---
name: sec-zap-dast-integration
description: Assistance with setting up, running, and parsing results from OWASP ZAP (Zed Attack Proxy) for Dynamic Application Security Testing to discover runtime vulnerabilities like misconfigurations and injection flaws.
---

# OWASP ZAP DAST Integration

This skill helps users integrate Dynamic Application Security Testing (DAST) into their workflow using OWASP ZAP. DAST identifies runtime vulnerabilities that static analysis might miss, strongly addressing **A02:2025 (Security Misconfiguration)**, **A05:2025 (Injection)**, and client-side issues.

## Usage

Use this skill when the user wants to test a running instance of their application or needs help deciphering a ZAP scan report.

**Example Triggers:**
* "How do I run a baseline ZAP scan against my local dev server using Docker?"
* "I have a ZAP JSON report. Can you analyze the findings and tell me how to fix the Cross-Site Scripting (XSS) warnings?"

## Workflow

1.  **Integration Assistance:** If the user is setting up ZAP, provide the necessary commands. Emphasize using the official Docker images for ease of use.
    *   *Baseline Scan Example:* `docker run -t owasp/zap2docker-stable zap-baseline.py -t http://host.docker.internal:8080/`
2.  **Report Ingestion:** Ask the user to provide the ZAP scan results, preferably in JSON format or by pasting the textual summary.
3.  **Vulnerability Triage:**
    *   Filter out informational alerts or likely false positives depending on the context (e.g., missing anti-CSRF tokens on a public, read-only API).
    *   Prioritize High and Medium severity alerts.
4.  **Root Cause & Remediation:** For genuine vulnerabilities discovered by ZAP (like reflected XSS or SQL injection):
    *   Explain *why* the vulnerability occurs.
    *   Provide code-level remediation advice for the specific framework the user is utilizing.
