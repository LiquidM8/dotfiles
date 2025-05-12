# Plugin loader
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

for plugin in $plugins; do
    plugin_dir="$HOME/.dotfiles/zsh/plugins/$plugin"
    plugin_file=(${plugin_dir}/*.plugin.zsh(N) ${plugin_dir}/*.zsh(N) ${plugin_dir}/*.sh(N))
    [[ -n "$plugin_file[1]" ]] && source "$plugin_file[1]"
done

unset plugin plugin_dir plugin_file
