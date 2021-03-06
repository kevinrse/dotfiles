################################
## DIRECTORIES ########
###########

# just to keep things somewhat organized
# here are a few instances where I modify a config file embedded within a hidden dir structure
# (e.g. guake), or an entire config dir (e.g. vim). Single dotfiles contained at the root
# of my home dir are handled below.

# For <CTRL> + <ALT> + ( - or = ) keybinding to adjust transparency in guake.
ln -s dotfiles/.gconf/apps/guake/keybindings/local/%gconf.xml

# This was necessary in 2016 (2017?) to prevent recoll from dominating HDD with search
# Keep it going until/unless I don't use recoll anymore
ln -s dotfiles/.recoll/recoll.conf




################################
## FILES  ########
###########




################################
## SECURE STUFF ########
###########
# Anything that contains private info kept track of here - NOT in git repo!

# TaskWarrior (contains secure sync credentials - DO NOT put on public github)
ln -s dotfiles/SECURE/.taskrc
