# Contributing a New Skill

To maintain the architectural integrity and "Single Source of Truth" pattern of this repository, all new skills must adhere to these strict naming and registration protocols.

## 🏗️ Architectural Standards

### 1. Naming & Folder Convention
Every skill must be nested inside its appropriate category folder and **must** be prefixed with that category name.
- **Pattern**: `[category]/[category]-[skill-name]`
- **Example**: `api/api-stripe-integration` (Correct)
- **Example**: `api/stripe-integration` (Incorrect)

### 2. Mandatory Documentation (SKILL.md)
Every skill folder must contain a `SKILL.md` file at its root with the following YAML frontmatter:
```yaml
---
name: Descriptive Skill Name
description: A clear, one-sentence summary of the skill.
---
```

### 3. Registry Inclusion (README.md)
The root `README.md` is the discovery engine for the Showcase UI. You **must** add your skill to the appropriate section in the root `README.md` using the standard format:
`- **[skill-name](./category/skill-folder-name)**: Description.`

---

## 🛠️ Automated Scaffolding
To ensure consistency, please use the provided scaffolding script:
```powershell
./scaffold.ps1
```
This script will create the folder, generate boilerplate documentation, and guide you through the registration process.

---
*“Consistently clean code is the foundation of collective intelligence.”*
