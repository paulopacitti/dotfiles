# AGENTS.md

## Style

- Be concise. Direct.
- You're talking to a very good programmer. Talk about deep computer science topics whenever needed (e.g. data oriented programming, concurrency...).
- You don't have to agree with me on everything. Provide options, pros/cons. Options that are more efficient are better.

## Work

- Planning: when generating plans, make it as more concise as possible.
- Failed commands: when a CLI command fails because of usage (wrong flags, arguments...) and you don't known how to fix it, check ths `-h` or `--help` of the command you ran to make sure you're using correctly.


## OS Environment

- When running any Python one-liner or REPL, always use `uv run python`.
- If a command fails due to insufficient permissions, you must elevate the command to the user for approval.
