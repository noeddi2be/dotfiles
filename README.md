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




