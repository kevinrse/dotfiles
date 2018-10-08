# add go language dir
export PATH=$PATH:/usr/local/go/bin

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"


# Anaconda
export PATH="/home/kmf76/anaconda2/bin:$PATH"
# Adding an alias for P-wave receiver function research
alias saP="source activate Pwave"

# use liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/gits/liquidprompt/liquidprompt
