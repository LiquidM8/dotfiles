# Load SSH keys via keychain
if command -v keychain &>/dev/null; then
    eval "$(keychain --quiet --eval id_ed25519_repoengine)"
fi
