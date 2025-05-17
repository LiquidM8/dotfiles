#
# --- Systems ---
#

# Addes color to the files
alias ls="ls --color=auto"

#
# --- Python Env ---
#

# Networking
alias pynet='source ~/venvs/network-automation/bin/activate'

#
# --- Applications ---
#

# TMUX - reloads config with feedback
alias tmux-reload='tmux source-file ~/.tmux.conf && tmux display-message "Tmux config reloaded!"'

#
# --- Servers ---
#

# COLOHOUSE
alias ch='ssh 208.85.0.1 -p 2222 -i $HOME/.ssh/id_ed25519_github'
# NULL router
alias null='ssh null-router.hivelocity.net'

# Local Tower - Nobara
alias nobara='ssh 172.31.6.143 -p 8912'
