#! /bin/bash

# # Lay some groundwork
REPO_HOME=~/Programming/Repos/dotfiles
DOTS_HOME=~/Programming/Repos/dotfiles/dotfiles
CONFIG_HOME="$XDG_CONFIG_HOME"

# zsh configs
mkdir -p $CONFIG_HOME/zsh
ln -sf $DOTS_HOME/zsh/zprofile $CONFIG_HOME/zsh/.zprofile
ln -sf $DOTS_HOME/zsh/zshrc $CONFIG_HOME/zsh/.zshrc

# rofi configs
mkdir -p $CONFIG_HOME/rofi
ln -sf $DOTS_HOME/rofi/config $CONFIG_HOME/rofi/config
ln -sf $DOTS_HOME/rofi/solarized-dARCer.rasi $CONFIG_HOME/rofi/solarized-dARCer.rasi

# ranger configs
mkdir -p $CONFIG_HOME/ranger
ln -sf $DOTS_HOME/ranger/rc.conf $CONFIG_HOME/ranger/rc.conf
ln -sf $DOTS_HOME/ranger/rifle.conf $CONFIG_HOME/ranger/rifle.conf
ln -sf $DOTS_HOME/ranger/commands.py $CONFIG_HOME/ranger/commands.py
ln -sf $DOTS_HOME/ranger/scope.sh $CONFIG_HOME/ranger/scope.sh

# polybar setup
mkdir -p $CONFIG_HOME/polybar
ln -sf $DOTS_HOME/polybar/config $CONFIG_HOME/polybar/config
ln -sf $DOTS_HOME/polybar/pulseaudio-icon.sh $CONFIG_HOME/polybar/pulseaudio-icon.sh
ln -sf $DOTS_HOME/polybar/pulseaudio-volume.sh $CONFIG_HOME/polybar/pulseaudio-volume.sh

# neovim config - whole directory
ln -sfd $DOTS_HOME/nvim $CONFIG_HOME/nvim

# neofetch config
mkdir -p $CONFIG_HOME/neofetch
ln -sf $DOTS_HOME/neofetch/config.conf $CONFIG_HOME/neofetch/config.conf

# i3 config
mkdir -p $CONFIG_HOME/i3
ln -sf $DOTS_HOME/i3/config $CONFIG_HOME/i3/config

# git config
ln -sf $DOTS_HOME/gitconfig ~/.gitconfig

# Xdefaults config
ln -sf $DOTS_HOME/Xdefaults ~/.Xdefaults

# xprofile
ln -sf $DOTS_HOME/xprofile ~/.xprofile

# lesskey file, takes extra to get it set up though
mkdir -p $DOTS_HOME/less
ln -sf $DOTS_HOME/less/lesskey $CONFIG_HOME/less/lesskey
ln -sf $DOTS_HOME/less/less_config $CONFIG_HOME/less/less_config

# Add all my custom scripts - whole directory
# mkdir -p $CONFIG_HOME/custom_scripts
ln -sfd $REPO_HOME/custom_scripts $CONFIG_HOME/custom_scripts

