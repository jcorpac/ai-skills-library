# 🛠️ AI Skills Repository

A production-ready collection of specialized AI "skills". Each skill is an autonomous package of instructions, patterns, and resources designed to extend an agent's capabilities across various development domains.

---

## 🏗️ Repository Structure

This repository uses a standardized layout for all skills, ensuring consistency and ease of integration.

```text
skills/
├── [category]-[skill-name]/  # Categorized skill directory
│   ├── SKILL.md              # Core instructions & YAML metadata
│   ├── scripts/              # Automation utilities
│   ├── examples/             # Practical usage patterns
│   └── resources/            # Templates and assets
├── CONTRIBUTING.md           # Guide for adding new skills
└── README.md                 # Main entry point
```

---

## 📚 Skill Inventory

### 🧪 Test-Driven Development (TDD) Suite
Comprehensive tools for maintaining high code quality through rigorous testing.
- **[tdd-cycle-manager](./tdd-cycle-manager)**: Guides the Red-Green-Refactor loop.
- **[tdd-test-generator](./tdd-test-generator)**: Scaffolds unit tests and edge cases.
- **[tdd-refactor-expert](./tdd-refactor-expert)**: Catalog of safe code transformation patterns.
- **[tdd-mocking-isolation](./tdd-mocking-isolation)**: Master dependency isolation.
- **[tdd-bdd-gherkin](./tdd-bdd-gherkin)**: Connect business requirements to tests.
- **[tdd-legacy-rescue](./tdd-legacy-rescue)**: Strategies for untested legacy systems.
- **[tdd-architecture-patterns](./tdd-architecture-patterns)**: Design for testability.
- **[tdd-property-testing](./tdd-property-testing)**: Generative testing for edge cases.
- **[tdd-automation-flow](./tdd-automation-flow)**: Feedback loop optimization.

### 📝 Documentation Suite
Establish clear communication and maintainable technical lore.
- **[doc-readme-master](./doc-readme-master)**: Crafting high-impact project entry points.
- **[doc-adr-architect](./doc-adr-architect)**: Recording architectural decision context.
- **[doc-api-auto](./doc-api-auto)**: Streamlined API documenting strategies.
- **[doc-knowledge-base](./doc-knowledge-base)**: Internal lore and onboarding guides.
- **[doc-changelog-keeper](./doc-changelog-keeper)**: Human-readable version history.
- **[doc-inline-clean](./doc-inline-clean)**: Principles for self-documenting code.

### 🐍 Data Science Suite (Python)
Specialized patterns for the full data science lifecycle.
- **[ds-eda-expert](./ds-eda-expert)**: Systematic Exploratory Data Analysis.
- **[ds-data-wrangling](./ds-data-wrangling)**: Robust cleaning and optimization.
- **[ds-feature-engineering](./ds-feature-engineering)**: High-signal feature creation.
- **[ds-model-evaluation](./ds-model-evaluation)**: Accurate validation and reporting.
- **[ds-experiment-tracking](./ds-experiment-tracking)**: Reproducibility patterns.
- **[ds-notebook-refactor](./ds-notebook-refactor)**: Transitioning research code to production.

---

## 🚀 Getting Started

1. **Browse**: Explore the subdirectories above to find a skill relevant to your task.
2. **Apply**: Read the `SKILL.md` within a specific directory to understand the methodology.
3. **Use**: Leverage the scripts and templates in the `scripts/` and `resources/` folders.

For instructions on adding your own skills, see [CONTRIBUTING.md](./CONTRIBUTING.md).

---

## ⚡ Vibe Coding Integration

"Vibe coding" relies on AI agents having high-quality context and modular instructions. To use these skills in your vibe coding projects:

### 1. Repository-as-Context
If your agent (e.g., Cursor, Windsurf, or a custom MCP server) supports indexing local repositories, simply point it to this root directory. It will automatically discover the skills based on the `SKILL.md` files.

### 2. Manual Skill Ingestion
To apply a specific skill to a new project session, copy the content of the relevant `SKILL.md` into your agent's system prompt or project-specific instructions (e.g., `.cursorrules`).

### 3. Script Execution
Many skills (like `tdd-cycle-manager`) include automation scripts in their `scripts/` folder. Ensure your environment has the necessary runtimes (Python, Node) to allow the agent to execute these utilities on your behalf.

---

## ⚖️ License
This project is licensed under the MIT License.
