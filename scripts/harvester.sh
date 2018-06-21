#! /bin/bash

# clean house
rm -r ~/.config/gumbi-dots/dotfiles

# zsh configs
mkdir -p ~/.config/gumbi-dots/dotfiles/zsh
cp ~/.config/zsh/.zprofile ~/.config//gumbi-dots/dotfiles/zsh/.zprofile
cp ~/.config/zsh/.zshenv ~/.config/gumbi-dots/dotfiles/zsh/.zshenv
cp ~/.config/zsh/.zshrc ~/.config/gumbi-dots/dotfiles/zsh/.zshrc

# rofi configs - whole directory
cp -r ~/.config/rofi ~/.config/gumbi-dots/dotfiles

# ranger configs
mkdir -p ~/.config/gumbi-dots/dotfiles/ranger
cp ~/.config/ranger/rc.conf ~/.config/gumbi-dots/dotfiles/ranger/rc.conf
cp ~/.config/ranger/rifle.conf ~/.config/gumbi-dots/dotfiles/ranger/rifle.conf

# polybar setup - whole directory
cp -r ~/.config/polybar ~/.config/gumbi-dots/dotfiles

# neovim config - whole directory
cp -r ~/.config/nvim ~/.config/gumbi-dots/dotfiles

# neofetch config - whole directory
cp -r ~/.config/neofetch ~/.config/gumbi-dots/dotfiles

# i3 config - whole directory
cp -r ~/.config/i3 ~/.config/gumbi-dots/dotfiles

# htop config - whole directory even though it's volatile for a config
cp -r ~/.config/htop ~/.config/gumbi-dots/dotfiles

# git config
cp ~/.gitconfig ~/.config/gumbi-dots/dotfiles/.gitconfig

# Xdefaults config - should move to Xresources though
cp ~/.Xdefaults ~/.config/gumbi-dots/dotfiles/.Xdefaults
