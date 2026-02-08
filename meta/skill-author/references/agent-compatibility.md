# AI Agent Compatibility & Integration Guide

This guide provides specific instructions for "installing" and using these skills in AI agents other than the Gemini CLI.

## 🚀 General Concept
For non-Gemini agents, "installation" typically involves making the `SKILL.md` content available to the agent's context.

---

## 💻 IDE-Based Agents

### Cursor
**Mechanism**: `.cursorrules`
1. Locate the skill you need (e.g., `tdd/tdd-cycle-manager`).
2. Copy the body of its `SKILL.md`.
3. Paste it into a `.cursorrules` file at the root of your project.
4. If the skill has scripts, ensure the agent knows they are available in `./scripts/` (you may need to copy them to your project).

### Windsurf
**Mechanism**: `.windsurfrules`
1. Similar to Cursor, append the skill's instructions to the `.windsurfrules` file in your workspace.

### GitHub Copilot
**Mechanism**: `.github/copilot-instructions.md`
1. Create or edit `.github/copilot-instructions.md`.
2. Add the skill documentation as a new section. Copilot will use these instructions for completions and chat context.

---

## 💬 Web-Based Agents

### Claude (Projects)
**Mechanism**: Project Knowledge
1. Create a "Project" in Claude.ai.
2. Upload the `SKILL.md` file from the skill directory.
3. (Optional) Upload any files from the `references/` folder to provide deeper context.

### ChatGPT (GPTs)
**Mechanism**: Custom Instructions & Knowledge
1. Create/Configure a custom GPT.
2. Paste the skill's procedural instructions into the "Instructions" field.
3. Upload `SKILL.md` and related documents to the "Knowledge" section for retrieval.

---

## 🔌 Protocol-Based Agents

### MCP (Model Context Protocol)
Many skills in this library can be converted into MCP servers using the `mcp-fastmcp-patterns` skill.
1. Use a tool-enabled agent that supports MCP (like Claude Desktop).
2. Point the MCP server to the scripts bundled with the skill.
