---
name: skill-author
description: Comprehensive guide and automation for creating, maintaining, and packaging AI skills within the skills library. Use when adding new skills or updating existing ones to ensure they meet repository standards and are correctly packaged for distribution.
---

# Skill Author

This skill assists in the end-to-end lifecycle of developing specialized AI skills. It ensures adherence to the repository's architectural standards and provides automation for scaffolding and packaging.

## Workflow

### 1. Discovery & Planning
- Identify a domain or repetitive task that would benefit from specialized instructions or scripts.
- Analyze existing skills in the repository to avoid duplication.
- Plan the skill's structure: will it need scripts, references, or assets?

### 2. Scaffolding

- Use the bundled `scaffold.ps1` script to create the initial structure.

- **Naming Convention**: `[category]/[category]-[skill-name]`.

- Example: `api/api-stripe-integration`.



```powershell

powershell.exe -File <path-to-skill>/scripts/scaffold.ps1

```



### 3. Implementation

- **SKILL.md**: Write clear, imperative instructions. Keep it lean (under 500 lines).

- **Scripts**: Place automation logic in `scripts/`. Ensure they output LLM-friendly results.

- **References**: Move detailed schemas or documentation to `references/`.

- **Assets**: Store templates or boilerplate in `assets/`.



### 4. Metadata Synchronization

- Run the bundled `sync-metadata.ps1` to refresh category manifests and READMEs.



```powershell

powershell.exe -File <path-to-skill>/scripts/sync-metadata.ps1

```



### 5. Packaging

- Use the bundled `package.ps1` script to create the `.skill` distribution package.

- This ensures the skill is zipped correctly and renamed to the expected `.skill` format.



```powershell

powershell.exe -File <path-to-skill>/scripts/package.ps1 -SkillPath ./category/skill-folder

```



### 6. Verification



- Install the package locally to test:



  ```powershell



  gemini skills install pkg/skill-name.skill --scope workspace



  ```



- Reload skills in the interactive session: `/skills reload`.







## Cross-Agent Compatibility







While these skills are optimized for Gemini CLI, they can be used with Cursor, Windsurf, Claude, and more.



- See [agent-compatibility.md](./references/agent-compatibility.md) for specific integration instructions for other AI agents.







## Repository Standards







### Frontmatter Requirements

- **name**: Must match the folder name (kebab-case).

- **description**: Single-line summary including clear trigger scenarios.



### Architectural Integrity

- Follow the "Single Source of Truth" pattern.

- The root `README.md` is the primary discovery engine.

- `SKILLS_MANIFEST.json` in each category is automatically generated.



## Automation Tools



### package.ps1

Automates the zip-and-rename process for cross-platform compatible `.skill` files.

- **Location**: `scripts/package.ps1`



### sync-metadata.ps1

Synchronizes the root README inventory with category-level manifests.

- **Location**: `scripts/sync-metadata.ps1`



### scaffold.ps1

Boilerplate generator for new skills.

- **Location**: `scripts/scaffold.ps1`
