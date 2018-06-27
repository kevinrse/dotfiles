# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory appendhistory autocd notify

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 0
zstyle :compinstall filename '/home/kmf76/.zshrc'
# KF removed all these from #  zstyle ':completion:*' auto-description 'specify: %d'
# first ZSH config. I am    #  zstyle ':completion:*' completer _expand _complete _correct _approximate
# hoping for more sensible  #  zstyle ':completion:*' format 'Completing %d'
# autocompletion behavior   #  zstyle ':completion:*' group-name ''
# without them. (Biggest    
# daily annoyance is to     #  eval "$(dircolors -b)"
# have the shell constantly #  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# assuming I misspelled     #  zstyle ':completion:*' list-colors ''
# things and proposing bad  #  zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# suggestions for typos.    #  zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# I'd rather have typos     #  zstyle ':completion:*' menu select=long
# just fail.                #  zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#                           #  zstyle ':completion:*' use-compctl false
#                           #  zstyle ':completion:*' verbose true
#                           #  
#                           #  zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#                           #  zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# allow menu highlighting.
zstyle ':completion:*' menu select


# Need a tweak in arch for home and end keys to work properly
# (as well as insert, delete, pageup, pagedown, perhaps others...)
# https://wiki.archlinux.org/index.php/Home_and_End_keys_not_working#Zsh
bindkey "^[[2~" overwrite-mode # Ins
bindkey "^[[3~" delete-char # Del
bindkey "^[[5~" beginning-of-history #PageUp
bindkey "^[[6~" end-of-history #PageDown
## ctrl+left and ctrl+right behavior:
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# but.... pageup and pagedown key escape sequences 
# are DIFFERENT depending on whether I'm in a tmux session or not!
# To determine if tmux is running, examine values of $TERM and $TMUX.
if [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; then
  bindkey "^[[1~" beginning-of-line
  bindkey "^[[4~" end-of-line
  #bindkey "${terminfo[khome]}" beginning-of-line  # these two work within tmux, but not outside of tmux.
  #bindkey "${terminfo[kend]}" end-of-line         # these two work within tmux, but not outside of tmux.
else
  # Assign these keys if tmux is NOT being used:
  bindkey "^[[H" beginning-of-line
  bindkey "^[[F" end-of-line
fi






# KF add zmv utility
autoload -U zmv
alias mmv='noglob zmv -W'
# note to self - remember that zmv -n allows to verify correct action before running command.

# KF make ls color by default
alias ls="ls --color=auto"
#alias ls=ls --color=tty  # this is the other way

# KF some aliases. These are taken from zsh-lovers (a man page available in repos).
# A GLOBAL ALIAS (-g) is substituted anywhere on a line. Rather than just the first word).
alias la="ls -a --color=auto"
alias -g H='| head'
alias -g kh="kmf76@hypocentre"
alias -g kn="kmf76@neurofunk"

## FISH style syntax highlighting. See https://wiki.archlinux.org/index.php/Zsh#Bind_key_to_ncurses_application
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

#  fortune quotes
# fortune 30% ~/Dropbox/quotes.txt 70% /usr/share/games/fortunes/ | cowsay 

# added by Anaconda3 4.3.0 installer
export PATH="/home/kmf76/anaconda3/bin:$PATH"

# Prevent accidental hanging in terminal from habitual CTRL-S usage
# see here: http://unix.stackexchange.com/questions/72086/ctrl-s-hang-terminal-emulator
stty -ixon


# set default editor 
export EDITOR=vim

#calculator
autoload -U zcalc


# from zsh-lovers
# Some functions, like _apt and _dpkg, are very slow. You can use a cache in order to proxy the list of results (like the list of available debian packages)
# Use a cache:
    zstyle ':completion:*' use-cache on
    zstyle ':completion:*' cache-path ~/.zsh/cache

# colors - solarized
# info: https://www.if-not-true-then-false.com/2012/solarized-linux/
# The installation script for this: gits/gnome-terminal-colors-solarized
# ("eval" line below added manually).
eval `dircolors /home/kmf76/.dir_colors/dircolors`

#read documents
alias -s pdf=acroread
alias -s ps=gv
alias -s dvi=xdvi




# open media files with vlc
# from oh-my-zsh:
#       https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
  _media_fts=(ape avi flv m4a mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
for ft in $_media_fts; do alias -s $ft=vlc; done


# Make zsh know about hosts already accessed by SSH
# from oh-my-zsh:
#       https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Open tmux automatically KF
# https://unix.stackexchange.com/questions/41274/having-tmux-load-by-default-when-a-zsh-terminal-is-launched
# if [ "$TMUX" = "" ]; then tmux; fi




#################################
## All-around Zsh reference
## http://reasoniamhere.com/2014/01/11/outrageously-useful-tips-to-master-your-z-shell/
#################################





alias Vs="task rc:~/VsMap/.taskrc"









# Choose a machine-specific configuration file and source it:
. ~/dotfiles/$(hostname)/.zshrc
