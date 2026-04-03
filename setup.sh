#!/bin/bash
echo "Setting up Claude Code global config..."

mkdir -p "$HOME/.claude/commands"

cp CLAUDE.md "$HOME/.claude/CLAUDE.md"
echo "Copied CLAUDE.md"

for f in commands/*.md; do
    cp "$f" "$HOME/.claude/commands/"
    echo "Copied $f"
done

echo ""
echo "Done. One manual step remaining:"
echo "Merge settings-additions.json into $HOME/.claude/settings.json"
echo "(Don't overwrite — just add the hooks sections into your existing file)"
