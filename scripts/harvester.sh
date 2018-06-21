#! /bin/bash

# Lay some groundwork
DOTS_HOME=~/Programming/Repos/dotfiles/dotfiles
EXTRA_HOME=~/Programming/Repos/dotfiles/dots_with_extra_steps
CONFIG_HOME=~/.config

# clean house
rm -ri $DOTS_HOME/*
rm -ri $EXTRA_HOME/*

# zsh configs
mkdir $DOTS_HOME/zsh
cp $CONFIG_HOME/zsh/.zprofile $DOTS_HOME/zsh/.zprofile
cp $CONFIG_HOME/zsh/.zshenv $DOTS_HOME/zsh/.zshenv
cp $CONFIG_HOME/zsh/.zshrc $DOTS_HOME/zsh/.zshrc

# rofi configs - whole directory
cp -r $CONFIG_HOME/rofi $DOTS_HOME

# ranger configs
mkdir $DOTS_HOME/ranger
cp $CONFIG_HOME/ranger/rc.conf $DOTS_HOME/ranger/rc.conf
cp $CONFIG_HOME/ranger/rifle.conf $DOTS_HOME/ranger/rifle.conf

# polybar setup - whole directory
cp -r $CONFIG_HOME/polybar $DOTS_HOME

# neovim config - whole directory
cp -r $CONFIG_HOME/nvim $DOTS_HOME

# neofetch config - whole directory
cp -r $CONFIG_HOME/neofetch $DOTS_HOME

# i3 config - whole directory
cp -r $CONFIG_HOME/i3 $DOTS_HOME

# htop config - whole directory even though it's volatile for a config
cp -r $CONFIG_HOME/htop $DOTS_HOME

# git config
cp $HOME/.gitconfig $DOTS_HOME/.gitconfig

# Xdefaults config - should move to Xresources though
cp $HOME/.Xdefaults $DOTS_HOME/.Xdefaults

# lesskey file, takes extra to get it set up though
mkdir $EXTRA_HOME/less
cp $CONFIG_HOME/less/lesskey $EXTRA_HOME/less
