#!/usr/bin/env bash

# Set variables
REPO_URL="https://github.com/LiquidM8/dotfiles.git"
CLONE_DIR="$HOME/.dotfiles"
CONFIG_DIR="$HOME/.config"

# Clone the repository
if [ ! -d "$CLONE_DIR" ]; then
    echo "Cloning dotfiles repo..."
    git clone "$REPO_URL" "$CLONE_DIR"
else
    echo "Dotfiles repo already exists at $CLONE_DIR"
fi

# Create symlinks (edit this list based on your actual files)
declare -A FILES_TO_LINK=(
    ["$CLONE_DIR/zsh/zshrc"]="$HOME/.zshrc"
    ["$CLONE_DIR/tmux/tmux.conf"]="$HOME/.tmux.conf"
    ["$CLONE_DIR/ghostty/config"]="$HOME/.config/ghostty/config"
)

echo "Linking dotfiles..."
for src in "${!FILES_TO_LINK[@]}"; do
    dest="${FILES_TO_LINK[$src]}"
    mkdir -p "$(dirname "$dest")"
    ln -sf "$src" "$dest"
    echo "Linked $src → $dest"
done

echo "Dotfiles setup complete."
