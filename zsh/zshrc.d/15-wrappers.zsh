# Set TERM based on environment
if [[ -n "$SSH_CONNECTION" ]]; then
  export TERM=xterm
elif [[ -n "$TMUX" ]]; then
  export TERM=tmux-256color
else
  export TERM=xterm-256color
fi

# Wrap ssh to fix TERM when inside tmux
ssh() {
  if [[ -n "$TMUX" ]]; then
    TERM=xterm /usr/bin/ssh "$@"
  else
    /usr/bin/ssh "$@"
  fi
}
