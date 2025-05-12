#!/usr/bin/env bash

set -e

echo "[+] Running dotfiles setup..."
bash "$HOME/.dotfiles/.scripts/dotfiles.sh"

echo "[+] Setting up ZSH plugins..."
bash "$HOME/.dotfiles/.scripts/plugins.sh"

# Add more setup scripts here if needed
# bash "$(dirname "$0")/neovim.sh"

echo "[✓] Environment setup complete."

echo "[i] Launching Zsh to test configuration..."
exec zsh

