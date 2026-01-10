---
description: Generate a pull request/merge request description from commits between branches
---

## Worfklow

- Extract commits between target branch and current branch with full details:

```bash
git log TARGET_BRANCH..HEAD --format=%B -p
```

- Parse the commit messages and diffs to generate ONLY a markdown MR description with these sections:

  - **Context** - Why this PR exists
  - **Changes** - Concise technical summary of what changed
  - **Tests** - What testing was done or is needed

- Never cite "MR" or "PR" in the description
- Output ONLY the markdown with no additional explanation, preamble, or commentary. Start directly with the markdown headers. Focus on WHY it was changed, not so much the WHAT
