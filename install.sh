#!/usr/bin/env bash
set -e

sudo apt-get update
#sudo apt-get install -y neovim stow zoxide eza git curl zsh
sudo apt-get install -y stow zoxide eza git curl zsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git \
        "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
        "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
        "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"
fi

rm -f "$HOME/.zshrc"
cd "$HOME/dotfiles"
stow -v -t "$HOME" tmux nvim linuxzsh alacritty
