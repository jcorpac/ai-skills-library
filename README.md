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
- **[ds-presentation-storyteller](./ds-presentation-storyteller)**: Crafting narrative-driven data stories.

### 🐍 Language Excellence (Python)
Advanced patterns for performance and scalability.
- **[py-performance-tuning](./py-performance-tuning)**: Profiling and speed optimization.
- **[py-packaging-pro](./py-packaging-pro)**: Modern project setup and distribution.
- **[py-asyncio-flow](./py-asyncio-flow)**: Mastering asynchronous concurrency.

### 🦀 Language Excellence (Rust)
Systems programming with safety and high performance.
- **[rs-memory-safety](./rs-memory-safety)**: Ownership, lifetimes, and safety.
- **[rs-error-excellence](./rs-error-excellence)**: Idiomatic error handling patterns.
- **[rs-zero-cost-abstractions](./rs-zero-cost-abstractions)**: Zero-overhead type system magic.

### 🎨 UI/UX & Presentation Layer
Premium frontend development without frameworks.
- **[ui-vanilla-premium](./ui-vanilla-premium)**: Bespoke styling and high-end aesthetics.
- **[ui-accessibility-pro](./ui-accessibility-pro)**: Inclusive design and A11y standards.
- **[ui-js-modular-patterns](./ui-js-modular-patterns)**: Clean, scalable JavaScript logic.
- **[ui-dynamic-interactions](./ui-dynamic-interactions)**: Professional animations and feedback.
- **[ui-responsive-grids](./ui-responsive-grids)**: Fluid layouts with Grid and Flexbox.
- **[ui-component-architecture](./ui-component-architecture)**: Reusable, encapsulated UI blocks.

### 🛠️ Git Mastery Suite
Professional version control and repository management.
- **[git-atomic-commits](./git-atomic-commits)**: Small, focused, and reversible changes.
- **[git-conventional-naming](./git-conventional-naming)**: Structured and machine-readable commits.
- **[git-branching-flow](./git-branching-flow)**: Collaboration strategies for speed and safety.
- **[git-hooks-automation](./git-hooks-automation)**: Automated pre-commit checks.
- **[git-history-polish](./git-history-polish)**: Advanced history management with rebase.
- **[git-tagging-releases](./git-tagging-releases)**: Semantic versioning and milestones.
- **[git-github-master](./git-github-master)**: Remote publishing and collaboration.

### 🤖 Machine Learning & MLOps
Comprehensive methodologies for the ML lifecycle.
- **[ml-supervised-patterns](./ml-supervised-patterns)**: Classification and Regression pipelines.
- **[ml-unsupervised-clustering](./ml-unsupervised-clustering)**: Pattern discovery and PCA.
- **[ml-hyperparameter-tuning](./ml-hyperparameter-tuning)**: Professional optimization with Optuna.
- **[ml-deep-learning-foundations](./ml-deep-learning-foundations)**: Neural nets and Transfer Learning.
- **[ml-nlp-transformers](./ml-nlp-transformers)**: Modern NLP and Hugging Face.
- **[ml-training-abstractions](./ml-training-abstractions)**: PyTorch Lightning and Keras patterns.
- **[ml-experiment-tracking-pro](./ml-experiment-tracking-pro)**: Rigorous logging with MLflow/W&B.
- **[ml-serving-frameworks](./ml-serving-frameworks)**: Scalable serving with BentoML/Ray.
- **[ml-feature-store-basics](./ml-feature-store-basics)**: Feature management with Feast.
- **[ml-ops-pipelines](./ml-ops-pipelines)**: Lifecycle orchestration with ZenML/Kubeflow.

### 🔌 MCP Architecture & Development
Professional engineering for the Model Context Protocol.
- **[mcp-server-foundations](./mcp-server-foundations)**: Architecture, transports, and lifecycle.
- **[mcp-tool-design](./mcp-tool-design)**: JSON Schema and error-resilient logic.
- **[mcp-fastmcp-patterns](./mcp-fastmcp-patterns)**: Rapid development with FastMCP.
- **[mcp-security-sandboxing](./mcp-security-sandboxing)**: Safe execution and resource isolation.
- **[mcp-testing-frameworks](./mcp-testing-frameworks)**: Automated verification for MCP tools.
- **[mcp-deployment-registry](./mcp-deployment-registry)**: UV/Docker packaging and host integration.

### 🌶️ Full-Stack Flask Mastery
Mastering production-grade web development with Flask.
- **[flask-foundations](./flask-foundations)**: App Factory and Blueprints.
- **[flask-templating-jinja](./flask-templating-jinja)**: Server-side rendering and layouts.
- **[flask-forms-validation](./flask-forms-validation)**: Secure input handling with Flask-WTF.
- **[flask-data-persistence](./flask-data-persistence)**: SQLAlchemy ORM and migrations.
- **[flask-auth-security](./flask-auth-security)**: Session and JWT authentication patterns.
- **[flask-api-design](./flask-api-design)**: RESTful design and serialization.
- **[flask-assets-management](./flask-assets-management)**: Minification and bundling pipelines.
- **[flask-testing-patterns](./flask-testing-patterns)**: Professional testing with Pytest.

### 🧠 Meta-Skill & Orchestration
Advanced strategies for managing large skill ecosystems and context.
- **[meta-skill-routing](./meta-skill-routing)**: Dynamic skill discovery and routing.
- **[meta-context-budgeting](./meta-context-budgeting)**: Context window management and purging.
- **[meta-agentic-chunking](./meta-agentic-chunking)**: Task decomposition and isolated execution.
- **[meta-mcp-dynamic-tools](./meta-mcp-dynamic-tools)**: MCP-driven dynamic tool injection.
- **[meta-recursive-discovery](./meta-recursive-discovery)**: Autonomous self-improvement and discovery.

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
