# add go language dir
export PATH=$PATH:/usr/local/go/bin

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"


# Anaconda
export PATH="/home/kmf76/anaconda2/bin:$PATH"
# Adding an alias for P-wave receiver function research
alias saP="source activate Pwave"

# Rust language rustlang cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# use liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/gits/liquidprompt/liquidprompt


# Installing Ruby for Jekyll
# https://jekyllrb.com/docs/installation/ubuntu/
#   > It is best to avoid installing Ruby Gems as the root user. Therefore, 
#   > we need to set up a gem installation directory for your user account...
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

