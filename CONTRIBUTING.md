# Contributing a New Skill

Thank you for helping expand the collective intelligence of this repository! To maintain quality and consistency, please follow these guidelines when adding a new skill.

## 📁 Standard Structure

Every skill MUST inhabit its own directory and follow this exact layout:

1.  **[skill-name]/SKILL.md**: The primary instruction file.
    *   Must contain YAML frontmatter with `name` and `description`.
    *   Should explain *what* the skill is and *how* to use it.
2.  **[skill-name]/scripts/**: Folder for executable scripts (Python, JS, Shell).
3.  **[skill-name]/examples/**: Folder for usage patterns and code snippets.
4.  **[skill-name]/resources/**: Folder for templates, data, and static assets.

## 📝 SKILL.md Requirements

Ensure your `SKILL.md` starts with the following YAML block:

```yaml
---
name: Your Skill Name
description: A concise, one-sentence summary of the skill's purpose.
---
```

## 🚀 Submission Process

1.  **Draft**: Use the `example-skill/` directory as a template.
2.  **Verify**: Ensure all paths in your documentation are accurate.
3.  **Clean**: Remove any "zombie code" or redundant comments from your scripts.
4.  **Commit**: Use a clear commit message (e.g., `Add doc-inline-clean skill`).

---

*“Code is for humans to read, and only incidentally for machines to execute.”*
