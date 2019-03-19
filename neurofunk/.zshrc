# machine-specific file: neurofunk



export PATH="/usr/local/Geopsy.org/bin:$PATH"
echo neurofunk

# Miniconda
source /home/kmf76/miniconda2/etc/profile.d/conda.sh
# Adding an alias for P-wave receiver function research
alias saP="conda activate Pwave"

# Rust language rustlang cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# use liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/gits/liquidprompt/liquidprompt


# Discovered that some gems require Ruby version greater than the repository version.
# Accordingly I used rbenv/ruby-build to build the latest stable version, 2.6.1.
# It's located in ~/local/ruby-2.6.1/
export PATH="$HOME/local/ruby-2.6.1/bin:$PATH"

# Installing Ruby for Jekyll
# https://jekyllrb.com/docs/installation/ubuntu/
#   > It is best to avoid installing Ruby Gems as the root user. Therefore, 
#   > we need to set up a gem installation directory for your user account...
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
