# Claude Code Global Config

My global Claude Code configuration — CLAUDE.md preferences, slash commands, and settings hooks. Clone this on any machine to get the same Claude behavior.

## What's in here

```
CLAUDE.md               # Global preferences loaded in every Claude Code session
commands/
  bot-deploy.md         # /bot-deploy  — stop, compile-check, commit, push, deploy to GCP, verify
  bot-status.md         # /bot-status  — SSH health check + profit_state.json summary
  state-sync.md         # /state-sync  — download profit_state.json + buy_fills_active.csv from GCP
  etsy-audit.md         # /etsy-audit  — run interactive formula reactivity tests on current spreadsheet
  ship-check.md         # /ship-check  — full pre-ship checklist before listing on Etsy
setup.sh                # Unix/Mac setup script
setup.bat               # Windows setup script
settings-additions.json # Hooks to add to ~/.claude/settings.json
```

## Setup on a new machine

### Windows
```bat
git clone https://github.com/[YOUR_USERNAME]/claude-global-config
cd claude-global-config
setup.bat
```

### Mac/Linux
```bash
git clone https://github.com/[YOUR_USERNAME]/claude-global-config
cd claude-global-config
chmod +x setup.sh && ./setup.sh
```

Both scripts:
1. Copy `CLAUDE.md` to `~/.claude/CLAUDE.md`
2. Copy all `commands/*.md` to `~/.claude/commands/`
3. Print a reminder to merge `settings-additions.json` into `~/.claude/settings.json`

## After setup

Merge `settings-additions.json` into your `~/.claude/settings.json` manually — it contains the SessionStart and Stop hooks. Don't overwrite your existing settings.json (it has project-specific permissions).

## Bot commands — fill in your GCP IP

The `bot-*.md` and `state-sync.md` commands reference `[GCP_VM_IP]` as a placeholder. After cloning, either:
- Do a find-replace to fill in your actual IP, or
- Set up an SSH alias in `~/.ssh/config`:
  ```
  Host gridbot
      HostName YOUR_IP_HERE
      User ryanguy7890
  ```
  Then update the commands to use `gridbot` instead of `ryanguy7890@[GCP_VM_IP]`.

## Keeping it updated

When you update config on one machine:
```bash
cd ~/claude-global-config  # or wherever you cloned it
# edit files
git add . && git commit -m "update config" && git push
```

On the other machine:
```bash
cd ~/claude-global-config
git pull && ./setup.sh  # or setup.bat on Windows
```
