---
name: sec-input-validation-generator
description: Generate strict input validation, type-checking, and sanitization code using modern libraries to address Injection (A05:2025) and Integrity Failures (A08:2025).
---

# Input Validation Generator

This skill focuses on a critical remediation strategy: strict input validation. It is designed to mitigate vulnerabilities like **A05:2025 – Injection** and **A08:2025 – Software or Data Integrity Failures** by ensuring that all data crossing trust boundaries is rigorously checked.

## Usage

Use this skill to refactor existing vulnerable code or correctly construct new data ingestion points using robust validation libraries.

**Example Triggers:**
* "I have an Express route that takes a JSON body. Can you rewrite it using Zod to validate the input strictly?"
* "Help me secure this Python FastAPI endpoint against injection using Pydantic models."
* "What is the best way to sanitize this HTML input before storing it in the database?"

## Workflow

1.  **Analyze the Data Contract:** Understand what data the endpoint or function expects (types, formats, lengths, constraints).
2.  **Select the Framework-Appropriate Library:**
    *   TypeScript/JavaScript: **Zod**, Yup, or Joi.
    *   Python: **Pydantic** or Marshmallow.
    *   Go: `validator` packages alongside strict unmarshaling.
3.  **Generate Validation Schemas:**
    *   Implement **allow-listing** (defining exactly what *is* allowed) rather than block-listing (trying to guess what is bad).
    *   Enforce strict type checking.
    *   Apply boundaries: minimum/maximum lengths for strings, ranges for numbers.
    *   Use regex for specific formats (e.g., emails, UUIDs).
4.  **Sanitization vs. Validation:** Clarify that validation (rejecting bad data) is preferred over sanitization (trying to clean bad data). However, if sanitization is required (e.g., accepting rich text HTML), provide code using established, maintained HTML sanitization libraries (like `DOMPurify`) rather than custom regex stripping.

## Output Expectation

The generated code should demonstrate how to parse the incoming request, validate it against the schema, cleanly handle validation errors (returning 400 Bad Request), and use the typed, validated data in the subsequent application logic.
