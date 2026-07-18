# ~/.zshrc

# Escの遅延をなくす
KEYTIMEOUT=1

# zsh-vi-mode
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh # Created by newuser for 5.9

ZVM_SYSTEM_CLIPBOARD_ENABLED=false

# zsh-vi-modeの貼り付け処理を標準に戻す
zvm_after_init() {
  zvm_bindkey viins '^[[200~' bracketed-paste
  zvm_bindkey viins '^[[201~' bracketed-paste
  zvm_bindkey vicmd '^[[200~' bracketed-paste
  zvm_bindkey vicmd '^[[201~' bracketed-paste
}

export EDITOR=nvim
export VISUAL=nvim

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

export PATH="$HOME/.local/bin:$PATH"

if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
  tmux attach-session -t main || tmux new-session -s main
fi

# zsh 補完機能
autoload -Uz compinit
compinit
