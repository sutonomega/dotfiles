# ~/.zshrc

# Escの遅延をなくす
KEYTIMEOUT=1

# zsh-vi-mode
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh # Created by newuser for 5.9

export EDITOR=nvim
export VISUAL=nvim

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

export PATH="$HOME/.local/bin:$PATH"

if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
  exec tmux
fi
