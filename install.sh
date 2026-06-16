#!/bin/sh

# Install Sheldon
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
    | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin

# Link dotfiles
mkdir -p ~/.config/sheldon
mkdir -p ~/.config/aerospace
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.textlintrc ~/.textlintrc
ln -sf ~/dotfiles/sheldon/plugins.toml ~/.config/sheldon/plugins.toml
ln -sf ~/dotfiles/aerospace.toml ~/.config/aerospace/aerospace.toml
ln -sf ~/dotfiles/aerospace/open-worktrees.sh ~/.config/aerospace/open-worktrees.sh
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json

# Register user-scope MCP servers (treat "already exists" as success)
mcp_out=$(claude mcp add-json notion "$(cat ~/dotfiles/claude/mcp/notion.json)" -s user 2>&1)
mcp_status=$?
echo "$mcp_out"
echo "$mcp_out" | grep -q "already exists" && mcp_status=0
(exit $mcp_status)
