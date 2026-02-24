---
name: untracked-templates
description: Committing template files to git while ignoring subsequent local mutations using the assume-unchanged flag.
---

# untracked-templates

## Purpose
Often, a repository needs an initial data file, SQLite database, or `.env` file just so clones don't crash on startup. However, you don't want local state updates during development to pollute the Git working tree. 

Adding the file to `.gitignore` will prevent it from being tracked entirely (meaning anyone cloning the repo has to create the file from scratch). 

## Usage

Use the plumbing command `git update-index --assume-unchanged` instead.

### 1. Commit the Baseline Template
Create your blank database or example JSON file. Stage and commit it to git so that it exists in the tree for others.

```bash
git add data/local_db.json
git commit -m "chore: add default local database template"
```

### 2. Flag as Untracked locally
Run the following command on your machine:
```bash
git update-index --assume-unchanged data/local_db.json
```

Now, whenever your application writes to `data/local_db.json`, `git status` will ignore it. Your private local state will never be committed, but the template structure remains safe in the remote repository!

### Reversing
If you ever intentionally update the public template structure, you can temporarily reverse the flag:
```bash
git update-index --no-assume-unchanged data/local_db.json
```

## Resources
- Git Documentation (update-index)
