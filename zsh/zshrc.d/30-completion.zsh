autoload -Uz compinit
zmodload zsh/complist

comp_cache="$HOME/.dotfiles/zsh/cache/zcompdump"
if [[ ! -f $comp_cache ]]; then
    compinit
else
    compinit -C -d $comp_cache
fi
