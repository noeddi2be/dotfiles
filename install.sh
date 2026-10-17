#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get install -y stow zoxide eza git curl zsh

rm -f "$HOME/.zshrc"
cd "$HOME/dotfiles"
stow -v -t "$HOME" tmux nvim linuxzsh alacritty opencode
