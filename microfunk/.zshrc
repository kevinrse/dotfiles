# add go language dir
export PATH=$PATH:/usr/local/go/bin

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"


# use liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/gits/liquidprompt/liquidprompt
