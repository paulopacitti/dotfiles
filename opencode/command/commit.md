---
description: Generate a commit message based on the staged changes and commit it
allowed-tools: Bash(git diff:*), Bash(git log:*), Bash(git commit:*)
---

Generate a conventional commit message from staged changes and recent git history, then commit with the generated message.

First, get the staged changes and recent git history:

**Staged changes:**
!`git diff --cached`


**Recent commit history:**
!`git log --oneline -n 5`

Using this information and following the conventional commits convention (format: `type(scope): description` with optional body), generate an appropriate commit message.

Do not add claude as co-author in commits

Then commit with the generated message with git commit -m {GENERATED_MESSAGE}
