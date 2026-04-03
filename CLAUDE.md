# Ryan's Global Claude Code Preferences

## Core Behavior

- **Propose before editing production files** - present the fix with pros/cons and wait for explicit approval before touching any live/critical file
- **Finish current task first** - if a new problem comes up mid-task, acknowledge it, add it to a todo, and complete what's already in progress
- **Production-ready only** - never write demos, prototypes, or placeholder code
- **Think before every code edit** - work through the math and logic with a concrete example before writing anything numerical or algorithmic
- **No hallucinations** - every number, value, or claim must come from the code, state, exchange data, or user input. If unknown, look it up or ask. Never guess.
- **Verify before stating** - read the actual code, check the actual state, run the actual command. Don't assume from memory or pattern matching.
- **Root causes only** - fix underlying issues, not symptoms
- **Simplicity wins** - if a simpler solution solves the problem equally well, use it even if it requires a major rewrite
- **No half measures** - do every task fully and thoroughly. Incomplete work is unacceptable.
- **Acknowledge mistakes immediately** - admit and fix, don't deflect

## Response Style

- Concise and direct - skip filler, get to the answer
- No trailing summaries of what was just done
- No unsolicited refactors, docstrings, or cleanup beyond the task
- When referencing code, use `file_path:line_number` format

## Environment

- **Machine**: Windows 10, bash shell via Claude Code
- **Bot server**: GCP VM (credentials in bot/CLAUDE.md - not committed to public repos)
- **SSH commands** to the GCP VM are pre-authorized and can run freely
- Use bash-compatible commands; avoid Windows-specific syntax
- Python3 is available locally via `Bash(python3:*)`

## Code Style

- No comments unless logic is genuinely non-obvious
- No type annotations on code not already using them
- No error handling for impossible cases
- Trust framework guarantees; validate only at system boundaries

## Git

- Commit only when explicitly asked
- Never `--no-verify`, never force push to main
- Use descriptive commit messages focused on "why"

## Projects on This Machine

- **bot/** - Gemini grid trading bot (live, production, GCP-hosted) - see bot/CLAUDE.md
- **etsyproject1/** - Etsy Google Sheets templates - see etsyproject1/CLAUDE.md
