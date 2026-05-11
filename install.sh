#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get install -y neovim stow zoxide eza git curl

rm -f ~/.zshrc

cd "$HOME/dotfiles"
stow -v -t "$HOME" tmux nvim linuxzsh alacritty
