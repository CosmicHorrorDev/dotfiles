#! /bin/bash

# Lay some groundwork
REPO_HOME=~/Programming/Repos/dotfiles
CONFIG_HOME=~/.config

# clean house
rm -ri $REPO_HOME/dotfiles

# zsh configs
mkdir -p $REPO_HOME/dotfiles/zsh
cp $CONFIG_HOME/zsh/.zprofile $REPO_HOME/dotfiles/zsh/.zprofile
cp $CONFIG_HOME/zsh/.zshenv $REPO_HOME/dotfiles/zsh/.zshenv
cp $CONFIG_HOME/zsh/.zshrc $REPO_HOME/dotfiles/zsh/.zshrc

# rofi configs - whole directory
cp -r $CONFIG_HOME/rofi $REPO_HOME/dotfiles

# ranger configs
mkdir -p $REPO_HOME/dotfiles/ranger
cp $CONFIG_HOME/ranger/rc.conf $REPO_HOME/dotfiles/ranger/rc.conf
cp $CONFIG_HOME/ranger/rifle.conf $REPO_HOME/dotfiles/ranger/rifle.conf

# polybar setup - whole directory
cp -r $CONFIG_HOME/polybar $REPO_HOME/dotfiles

# neovim config - whole directory
cp -r $CONFIG_HOME/nvim $REPO_HOME/dotfiles

# neofetch config - whole directory
cp -r $CONFIG_HOME/neofetch $REPO_HOME/dotfiles

# i3 config - whole directory
cp -r $CONFIG_HOME/i3 $REPO_HOME/dotfiles

# htop config - whole directory even though it's volatile for a config
cp -r $CONFIG_HOME/htop $REPO_HOME/dotfiles

# git config
cp $HOME/.gitconfig $REPO_HOME/dotfiles/.gitconfig

# Xdefaults config - should move to Xresources though
cp $HOME/.Xdefaults $REPO_HOME/dotfiles/.Xdefaults
