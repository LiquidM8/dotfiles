#!/usr/bin/env bash

REPO_URL="https://github.com/LiquidM8/dotfiles.git"
CLONE_DIR="$HOME/.dotfiles"

if [ ! -d "$CLONE_DIR" ]; then
    echo "Cloning dotfiles..."
    git clone "$REPO_URL" "$CLONE_DIR"
else
    echo "Dotfiles already exist. Pulling latest..."
    git -C "$CLONE_DIR" pull
fi

declare -A FILES_TO_LINK=(
    ["$CLONE_DIR/zsh/zshrc"]="$HOME/.zshrc"
    ["$CLONE_DIR/tmux/tmux.conf"]="$HOME/.tmux.conf"
    ["$CLONE_DIR/nvim"]="$HOME/.config/nvim"
    ["$CLONE_DIR/ghostty"]="$HOME/.config/ghostty"
)

echo "Linking files..."
for src in "${!FILES_TO_LINK[@]}"; do
    dest="${FILES_TO_LINK[$src]}"
    mkdir -p "$(dirname "$dest")"
    ln -sf "$src" "$dest"
    echo "Linked $src → $dest"
done
