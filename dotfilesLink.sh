#!/bin/sh
mkdir -p ~/.config/sheldon
mkdir -p ~/.config/aerospace
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.textlintrc ~/.textlintrc
ln -sf ~/dotfiles/sheldon/plugins.toml ~/.config/sheldon/plugins.toml
ln -sf ~/dotfiles/aerospace.toml ~/.config/aerospace/aerospace.toml
