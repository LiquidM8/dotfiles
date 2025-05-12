#!/usr/bin/env bash

PLUGIN_BASE="$HOME/.dotfiles/zsh/plugins"
mkdir -p "$PLUGIN_BASE"

clone_or_update() {
    local name=$1
    local url=$2
    local dest="$PLUGIN_BASE/$name"

    if [ ! -d "$dest" ]; then
        echo "Cloning $name..."
        git clone "$url" "$dest"
    else
        echo "Updating $name..."
        git -C "$dest" pull
    fi
}

clone_or_update "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
clone_or_update "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting"
