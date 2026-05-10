# Repo for my .dotfiles

The idea is to use stow for managing my dotfiles for now - in a single repository. <br>
The single dotfiles repository should also be useful for Dev Containers.

## Folder Structure for Stow
Folders are copied one relative directory upwards, so the .dotfiles directory must be in the home directory for example. <br>
Meaning: When using stow for `~/.tmux.conf` ->  the path in the .dotfiles directory must be 
`~/.dotfiles/tmux/.tmux.conf`. For each symlink command in stow, a seperate folder is required inside the .dotfiles folder. On that folder, the stow command is executed. Inside that folder, the relative path to the home directory is replicated. 

## Install Stow on MacOS
> brew install stow

## Clone the Repo from inside ~
> git clone 'githubrepo' ~/.dotfiles

Best to clone into a .hidden directory.

## Stow commands
1. Backup the old dotfile or dotfile folder.
2. cd into the .dotfiles directory.
3. `stow tmux` -> to create the new symlink
4. `stow --delete tmux` -> to delete an existing symlink



## Installation of Alacritty
Initial setup on MacOS. Use different package manager for Linux.
The repository can be cloned into '~/.config/' <br>
Or it is managed using Stow -> dependencies still must be installed.

### Additional dependencies

```
brew install font-meslo-lg-nerd-font
```

### Install PowerLevel10k and add to .zshrc
```
brew install powerlevel10k
```

#### Optional

```
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
```

### Install zsh-autosuggestions and add to .zshrc
```
brew install zsh-autosuggestions
```
```

#### Optional

echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```

### Install zsh-syntax-highlighting and add to .zshrc
```
brew install zsh-syntax-highlighting
```

#### Optional

```
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

### Install Eza (better ls) and update .zshrc
```
brew install eza
```


#### Optional: Add this to .zshrc

```
# Eza (better ls)

alias ls="eza --icons=always"
```

### Install Zoxide (better cd) and update .zshrc
```
brew install zoxide
```

#### Add this to .zshrc

```
# Zoxide (better cd)
eval "$(zoxide init zsh)"

alias cd="z"
```
