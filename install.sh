#!/bin/bash

# Dotfiles installation script
# This script sets up your dotfiles on a new Mac

set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "Installing dotfiles..."

# Backup existing files
if [ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ]; then
    echo "Backing up existing .zshrc to .zshrc.backup"
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi

# Create symlinks
echo "Creating symlink for .zshrc"
ln -sf "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

echo "Dotfiles installation complete!"
echo ""
echo "Run 'source ~/.zshrc' to apply changes in your current shell"
