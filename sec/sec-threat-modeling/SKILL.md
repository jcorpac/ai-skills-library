---
name: sec-threat-modeling
description: Guide users through threat-modeling exercises (like STRIDE) during the design phase to identify and mitigate A06:2025 Insecure Design vulnerabilities before code is written.
---

# Threat Modeling

This skill facilitates interactive threat-modeling sessions. By analyzing the architecture and data flows of a feature *before* implementation, this skill aims to prevent **A06:2025 – Insecure Design**.

## Usage

Deploy this skill when planning a new feature, service, or significant architectural change.

**Example Triggers:**
* "I want to add a new password reset flow. Can we threat model it?"
* "Let's use the STRIDE methodology to review the design for the new payment processing microservice."

## Workflow

1.  **Architecture Elicitation:** Ask the user to describe the system's components, actors (users/services), trust boundaries, and data flows. Encourage them to provide a textual description or a Mermaid diagram.
2.  **STRIDE Analysis:** Methodically evaluate the proposed design against the STRIDE categories:
    *   **S**poofing (Authentication): Can an attacker pretend to be someone else?
    *   **T**ampering (Integrity): Can data be altered in transit or at rest?
    *   **R**epudiation (Non-repudiation): Can actions be denied by the user taking them (lack of logging/auditing)?
    *   **I**nformation Disclosure (Confidentiality): Is private data exposed to unauthorized parties?
    *   **D**enial of Service (Availability): Can the system be brought down or degraded?
    *   **E**levation of Privilege (Authorization): Can a user gain higher-level permissions?
3.  **Vulnerability Identification:** Based on the STRIDE analysis, list potential threats specific to the design.
4.  **Mitigation Strategy Formulation:** For each identified threat, propose concrete, actionable security controls that should be integrated into the design.

## Goal

The output of a threat modeling session should be a list of security requirements that must be met during the implementation phase.
