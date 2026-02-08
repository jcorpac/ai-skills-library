# 🛠️ AI Skills Repository

A production-ready collection of specialized AI "skills". Each skill is an atomic skill, each a self-contained instruction set, often accompanied by helper **scripts** and **resources** to accelerate implementation.

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
- **[tdd-cycle-manager](./tdd/tdd-cycle-manager)**: Guides the Red-Green-Refactor loop.
- **[tdd-test-generator](./tdd/tdd-test-generator)**: Scaffolds unit tests and edge cases.
- **[tdd-refactor-expert](./tdd/tdd-refactor-expert)**: Catalog of safe code transformation patterns.
- **[tdd-mocking-isolation](./tdd/tdd-mocking-isolation)**: Master dependency isolation.
- **[tdd-bdd-gherkin](./tdd/tdd-bdd-gherkin)**: Connect business requirements to tests.
- **[tdd-legacy-rescue](./tdd/tdd-legacy-rescue)**: Strategies for untested legacy systems.
- **[tdd-architecture-patterns](./tdd/tdd-architecture-patterns)**: Design for testability.
- **[tdd-property-testing](./tdd/tdd-property-testing)**: Generative testing for edge cases.
- **[tdd-automation-flow](./tdd/tdd-automation-flow)**: Feedback loop optimization.

### 📝 Documentation Suite
Establish clear communication and maintainable technical lore.
- **[doc-readme-master](./doc/doc-readme-master)**: Crafting high-impact project entry points.
- **[doc-adr-architect](./doc/doc-adr-architect)**: Recording architectural decision context.
- **[doc-api-auto](./doc/doc-api-auto)**: Streamlined API documenting strategies.
- **[doc-knowledge-base](./doc/doc-knowledge-base)**: Internal lore and onboarding guides.
- **[doc-changelog-keeper](./doc/doc-changelog-keeper)**: Human-readable version history.
- **[doc-style-guide](./doc/doc-style-guide)**: Standards for technical writing and formatting.
- **[doc-inline-clean](./doc/doc-inline-clean)**: Principles for self-documenting code.

### 🐍 Data Science Suite (Python)
Specialized patterns for the full data science lifecycle.
- **[ds-eda-expert](./ds/ds-eda-expert)**: Systematic Exploratory Data Analysis.
- **[ds-data-wrangling](./ds/ds-data-wrangling)**: Robust cleaning and optimization.
- **[ds-feature-engineering](./ds/ds-feature-engineering)**: High-signal feature creation.
- **[ds-model-evaluation](./ds/ds-model-evaluation)**: Accurate validation and reporting.
- **[ds-experiment-tracking](./ds/ds-experiment-tracking)**: Reproducibility patterns.
- **[ds-notebook-refactor](./ds/ds-notebook-refactor)**: Transitioning research code to production.
- **[ds-presentation-storyteller](./ds/ds-presentation-storyteller)**: Crafting narrative-driven data stories.

### 🐍 Language Excellence (Python)
Advanced patterns for performance and scalability.
- **[py-performance-tuning](./py/py-performance-tuning)**: Profiling and speed optimization.
- **[py-packaging-pro](./py/py-packaging-pro)**: Modern project setup and distribution.
- **[py-asyncio-flow](./py/py-asyncio-flow)**: Mastering asynchronous concurrency.

### 🦀 Language Excellence (Rust)
Systems programming with safety and high performance.
- **[rs-memory-safety](./rs/rs-memory-safety)**: Ownership, lifetimes, and safety.
- **[rs-error-excellence](./rs/rs-error-excellence)**: Idiomatic error handling patterns.
- **[rs-zero-cost-abstractions](./rs/rs-zero-cost-abstractions)**: Zero-overhead type system magic.

### 🎨 UI/UX & Presentation Layer
Premium frontend development without frameworks.
- **[ui-vanilla-premium](./ui/ui-vanilla-premium)**: Bespoke styling and high-end aesthetics.
- **[ui-accessibility-pro](./ui/ui-accessibility-pro)**: Inclusive design and A11y standards.
- **[ui-js-modular-patterns](./ui/ui-js-modular-patterns)**: Clean, scalable JavaScript logic.
- **[ui-dynamic-interactions](./ui/ui-dynamic-interactions)**: Professional animations and feedback.
- **[ui-responsive-grids](./ui/ui-responsive-grids)**: Fluid layouts with Grid and Flexbox.
- **[ui-component-architecture](./ui/ui-component-architecture)**: Reusable, encapsulated UI blocks.

### 🛠️ Git Mastery Suite
Professional version control and repository management.
- **[git-atomic-commits](./git/git-atomic-commits)**: Small, focused, and reversible changes.
- **[git-conventional-naming](./git/git-conventional-naming)**: Structured and machine-readable commits.
- **[git-branching-flow](./git/git-branching-flow)**: Collaboration strategies for speed and safety.
- **[git-hooks-automation](./git/git-hooks-automation)**: Automated pre-commit checks.
- **[git-history-polish](./git/git-history-polish)**: Advanced history management with rebase.
- **[git-tagging-releases](./git/git-tagging-releases)**: Semantic versioning and milestones.
- **[git-github-master](./git/git-github-master)**: Remote publishing and collaboration.

### 🤖 Machine Learning & MLOps
Comprehensive methodologies for the ML lifecycle.
- **[ml-supervised-patterns](./ml/ml-supervised-patterns)**: Classification and Regression pipelines.
- **[ml-unsupervised-clustering](./ml/ml-unsupervised-clustering)**: Pattern discovery and PCA.
- **[ml-hyperparameter-tuning](./ml/ml-hyperparameter-tuning)**: Professional optimization with Optuna.
- **[ml-deep-learning-foundations](./ml/ml-deep-learning-foundations)**: Neural nets and Transfer Learning.
- **[ml-nlp-transformers](./ml/ml-nlp-transformers)**: Modern NLP and Hugging Face.
- **[ml-training-abstractions](./ml/ml-training-abstractions)**: PyTorch Lightning and Keras patterns.
- **[ml-experiment-tracking-pro](./ml/ml-experiment-tracking-pro)**: Rigorous logging with MLflow/W&B.
- **[ml-serving-frameworks](./ml/ml-serving-frameworks)**: Scalable serving with BentoML/Ray.
- **[ml-feature-store-basics](./ml/ml-feature-store-basics)**: Feature management with Feast.
- **[ml-ops-pipelines](./ml/ml-ops-pipelines)**: Lifecycle orchestration with ZenML/Kubeflow.

### 🔌 MCP Architecture & Development
Professional engineering for the Model Context Protocol.
- **[mcp-server-foundations](./mcp/mcp-server-foundations)**: Architecture, transports, and lifecycle.
- **[mcp-tool-design](./mcp/mcp-tool-design)**: JSON Schema and error-resilient logic.
- **[mcp-fastmcp-patterns](./mcp/mcp-fastmcp-patterns)**: Rapid development with FastMCP.
- **[mcp-security-sandboxing](./mcp/mcp-security-sandboxing)**: Safe execution and resource isolation.
- **[mcp-testing-frameworks](./mcp/mcp-testing-frameworks)**: Automated verification for MCP tools.
- **[mcp-deployment-registry](./mcp/mcp-deployment-registry)**: UV/Docker packaging and host integration.

### 🌶️ Full-Stack Flask Mastery
Mastering production-grade web development with Flask.
- **[flask-foundations](./flask/flask-foundations)**: App Factory and Blueprints.
- **[flask-templating-jinja](./flask/flask-templating-jinja)**: Server-side rendering and layouts.
- **[flask-forms-validation](./flask/flask-forms-validation)**: Secure input handling with Flask-WTF.
- **[flask-data-persistence](./flask/flask-data-persistence)**: SQLAlchemy ORM and migrations.
- **[flask-auth-security](./flask/flask-auth-security)**: Session and JWT authentication patterns.
- **[flask-api-design](./flask/flask-api-design)**: RESTful design and serialization.
- **[flask-assets-management](./flask/flask-assets-management)**: Minification and bundling pipelines.
- **[flask-testing-patterns](./flask/flask-testing-patterns)**: Professional testing with Pytest.

### 🧠 Meta-Skill & Orchestration
Advanced strategies for managing large skill ecosystems and context.
- **[skill-author](./meta/skill-author)**: Comprehensive guide and automation for creating and packaging skills.
- **[meta-skill-routing](./meta/meta-skill-routing)**: Dynamic skill discovery and routing.
- **[meta-context-budgeting](./meta/meta-context-budgeting)**: Context window management and purging.
- **[meta-agentic-chunking](./meta/meta-agentic-chunking)**: Task decomposition and isolated execution.
- **[meta-mcp-dynamic-tools](./meta/meta-mcp-dynamic-tools)**: MCP-driven dynamic tool injection.
- **[meta-recursive-discovery](./meta/meta-recursive-discovery)**: Autonomous self-improvement and discovery.

### 🚀 Modern Ecosystem Expansion
High-performance tools for modern data science and API development.
- **[ds-polars-performance](./ds/ds-polars-performance)**: Lightning-fast DataFrames with Polars.
- **[ml-streamlit-apps](./ml/ml-streamlit-apps)**: Rapid interactive ML dashboarding.
- **[api-fastapi-modern](./api/api-fastapi-modern)**: Type-safe, high-performance APIs.
- **[ops-github-actions-cicd](./ops/ops-github-actions-cicd)**: Professional workflow automation.

### 🐳 Docker & Container Mastery
Production-grade containerization and orchestration.
- **[ops-docker-foundations](./ops/ops-docker-foundations)**: Container lifecycle and basic patterns.
- **[ops-docker-compose-orchestration](./ops/ops-docker-compose-orchestration)**: Multi-container local development.
- **[ops-docker-optimization](./ops/ops-docker-optimization)**: Multi-stage builds and layer caching.
- **[ops-docker-security-hardening](./ops/ops-docker-security-hardening)**: Non-root execution and secret management.
- **[ops-docker-networking-volumes](./ops/ops-docker-networking-volumes)**: Persistent data and service networks.

### 🍱 GitHub Portfolio Showcase
Presenting your skill library as a professional, searchable documentation site.
- **[gh-pages-foundations](./ops/gh-pages-foundations)**: Hosting and static routing.
- **[ui-portfolio-theming](./ui/ui-portfolio-theming)**: Premium design for documentation portfolios.
- **[js-markdown-rendering](./ui/js-markdown-rendering)**: Dynamic browser-side markdown rendering.
- **[ui-search-filtering](./ui/ui-search-filtering)**: Fast client-side skill searching.
- **[gh-actions-static-deploy](./ops/gh-actions-static-deploy)**: Automated CI/CD for portfolios.

---

## 🚀 Getting Started

### 1. Installation & Packaging
All skills in this repository have been standardized and packaged into a central directory for easy installation.

* **Standardized Metadata**: Every skill's `SKILL.md` uses a hyphen-cased `name` field (e.g., `name: doc-readme-master`) that matches its directory name for perfect validation.
* **Packaged Bundles**: You can find pre-built `.skill` bundles in the `pkg/` directory.

**To install a skill:**
```bash
gemini skills install pkg/[skill-name].skill --scope user
```

**To activate skills:**
After installation, run the following command in your interactive Gemini CLI session:
```bash
/skills reload
```

### 2. Manual Use
1. **Browse**: Explore the subdirectories above to find a skill relevant to your task.
2. **Apply**: Read the `SKILL.md` within a specific directory to understand the methodology.
3. **Use**: Leverage the scripts and templates in the `scripts/` and `resources/` folders.

For instructions on adding your own skills, see [CONTRIBUTING.md](./CONTRIBUTING.md).

---

## ⚡ AI Agent Integration

These skills are designed to be cross-compatible with most modern AI agents.

### 1. IDE-Based Agents (Cursor, Windsurf, GitHub Copilot)
- **Cursor**: Copy the content of a `SKILL.md` into your `.cursorrules` file to apply specific expertise to your project.
- **Windsurf**: Similar to Cursor, append skill instructions to your `.windsurfrules` file.
- **GitHub Copilot**: Add skill documentation to `.github/copilot-instructions.md` for project-wide guidance.

### 2. Chat-Based Agents (Claude Projects, ChatGPT GPTs)
- **Claude Projects**: Upload the `SKILL.md` file (and any relevant `.md` files from `references/`) directly to your project's Knowledge base.
- **ChatGPT GPTs**: Add the skill instructions to the "Instructions" field or upload them as files in the "Knowledge" section of your custom GPT.

### 3. Repository-as-Context
If your agent supports indexing local repositories, simply point it to this root directory. It will automatically discover the skills based on the standardized `SKILL.md` files and folder structure.

### 4. Script Execution
Many skills include automation scripts in their `scripts/` folder. Ensure your environment has the necessary runtimes (Python, Node) to allow the agent to execute these utilities on your behalf.

---

## ⚖️ License
This project is licensed under the MIT License.
