---
name: sec-owasp-code-review
description: Perform targeted static application security testing (SAST) focused on the OWASP Top 10 (2025). Acts as a security reviewer scanning for anti-patterns like concatenated SQL queries, missing authorization checks, hardcoded secrets, and weak hashing algorithms.
---

# OWASP Code Review

This skill equips the AI agent to perform targeted security code reviews, specifically looking for vulnerabilities highlighted in the OWASP Top 10 (2025).

## Usage

When requesting a code review with this skill, specify the target files and ask the AI to evaluate them against the OWASP Top 10.

**Example Triggers:**
* "Can you run a security review on `auth.js` using the OWASP top 10 rules?"
* "Please audit the database layer for A01: Broken Access Control and A05: Injection."

## Workflow

1.  **Context Loading:** Review the provided code files.
2.  **Targeted Scanning:** Systematically check for the following anti-patterns:
    *   **A01: Broken Access Control:** Are there checks ensuring the user is authorized to perform the action or access the data?
    *   **A02: Security Misconfiguration:** Are there exposed secrets, overly permissive CORS policies, or debug flags enabled in production code?
    *   **A04: Cryptographic Failures:** Is sensitive data transmitted in plaintext? Are weak or deprecated cryptographic algorithms (e.g., MD5, SHA1) being used?
    *   **A05: Injection:** Is user-supplied data concatenated directly into SQL queries, OS commands, or dynamic evaluation blocks?
    *   **A07: Authentication Failures:** Are passwords handled insecurely (e.g., logging plaintext passwords)? Are there flaws in session management?
    *   **A10: Mishandling of Exceptional Conditions:** Can an error state leak sensitive stack traces or leave the system in an insecure fallback state?
3.  **Reporting:** Provide a detailed report of findings, categorized by the OWASP Top 10 risk number, with specific code snippets and actionable remediation advice.

## Remediation Guidance

Always emphasize **secure-by-default** frameworks and libraries:
*   Instead of sanitizing SQL inputs, recommend **parameterized queries/ORMs**.
*   Instead of custom hashing, recommend strong, memory-hard algorithms like **Argon2** or **bcrypt**.
*   Instead of ad-hoc authorization checks, recommend centralized **policy-based authorization frameworks**.
