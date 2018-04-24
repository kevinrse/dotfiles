#!/bin/bash
#
# Set up all needed symlinks (mostly useful for setting up a new machine from scratch, so keep it updated).

# Keeping separate scripts in each machine-specific folder too, similar to the .zshrc file.

cd ~

################################
## DIRECTORIES ########
###########

# just to keep things somewhat organized
# here are a few instances where I modify a config file embedded within a hidden dir structure
# (e.g. guake), or an entire config dir (e.g. vim). Single dotfiles contained at the root
# of my home dir are handled below.

# vim (directory)
ln -s dotfiles/.vim




################################
## FILES  ########
###########

# git config file for machine
ln -s dotfiles/.gitconfig

# R
ln -s dotfiles/.Rprofile

# tmux
ln -s dotfiles/.tmux.conf

# vim (conf)
ln -s dotfiles/.vimrc

# zshrc
ln -s dotfiles/.zshrc



################################
## SECURE STUFF ########
###########
# Anything that contains private info kept track of here - NOT in git repo!





###########################################################################################################
## Now source machine-specific file...

. ~/dotfiles/$(hostname)/setup_dotfile_symlinks.sh
