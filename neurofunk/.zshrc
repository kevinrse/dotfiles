# machine-specific file: neurofunk



export PATH="/usr/local/Geopsy.org/bin:$PATH"
echo neurofunk

# Anaconda
export PATH="/home/kmf76/anaconda2/bin:$PATH"
# Adding an alias for P-wave receiver function research
alias saP="source activate Pwave"


# use liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/gits/liquidprompt/liquidprompt
