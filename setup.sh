#!/bin/sh

###
# Setup script for https://github.com/BCurrell/dotfiles-sysadmin
###

# Remove any existing config files that we have versions for:
rm -rf \
  ~/.bash* \
  ~/.profile*

# Create symlinks for our config files
ln -sn ~/dotfiles/profile ~/.profile
ln -sn ~/dotfiles/profile.d ~/.profile.d
ln -sn ~/dotfiles/bashrc ~/.bashrc
ln -sn ~/dotfiles/bashrc.d ~/.bashrc.d
