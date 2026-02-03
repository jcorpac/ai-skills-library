# Skills Repository

A central repository for specialized AI "skills". Each skill is an autonomous package of instructions, scripts, and resources that can be applied to various projects.

## Project Structure

```text
skills/
├── example-skill/       # A template skill showing the standard structure
│   ├── SKILL.md         # Core instructions and YAML metadata
│   ├── scripts/         # Helper scripts (Python, JS, Shell, etc.)
│   ├── examples/        # Usage examples and patterns
│   └── resources/       # External assets and data
├── .gitignore           # Repository-level ignore rules
└── README.md            # Repository documentation
```

## Creating a New Skill

1. Create a new directory for your skill: `mkdir my-new-skill`
2. Follow the structure demonstrated in `example-skill/`.
3. Provide a concise `SKILL.md` with appropriate YAML frontmatter.
