#!/usr/bin/env bash

sudo apt update

sudo apt install -y \
  git \
  zsh \
  tmux \
  ripgrep \
  fd-find \
  fzf \
  unzip \
  curl

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

mkdir -p ~/.config
ln -sfn ~/dotfiles/.config/nvim ~/.config/nvim

mkdir -p ~/.zsh

if [ ! -d ~/.zsh/zsh-vi-mode ]; then
  git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.zsh/zsh-vi-mode
fi
