

# this is needed on hypocentre because I installed taskWarrior locally without admin privileges.
export PATH=/home/kmf76/gits/task/src/:$PATH

# KF added this 20180208 because pandoc plugins (pandoc-eqnos and pandoc-tablenos) are located here but this path is not included by default.
export PATH=/home/kmf76/.local/bin:$PATH

# KF added Conda 2018-07 - at the moment am solely using it for git-annex. Using new environment "KFdefault"
source activate KFdefault
