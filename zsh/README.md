# Modular Zsh Configuration

This directory contains modular `.zsh` configuration files, loaded in order based on numeric prefixes.

## Load Order

| File                | Purpose                                |
|---------------------|----------------------------------------|
| 00-global.zsh       | Global shell options (e.g. globbing)   |
| 05-env.zsh          | Enviremental Configurations
| 10-path.zsh         | Modify `$PATH`                         |
| 15-wrappers.zsh     | TMUX-aware `TERM` export and `ssh()`   |
| 20-keychain.zsh     | Load SSH keys with keychain            |
| 30-completion.zsh   | Zsh completion setup with caching      |
| 40-plugins.zsh      | Load custom plugins from plugins dir   |
| 45-aliases.zsh      | Application and utility aliases        |
| 50-history.zsh      | Configure Zsh history behavior         |
| 60-options.zsh      | Set Zsh shell behavior options         |
| 99-prompt.zsh       | Load prompt (e.g. Starship) last       |

## Notes

- All files are loaded via globbing in `.zshrc`, so the order matters.
- Use 10-step gaps to allow easy future insertion of configs.
