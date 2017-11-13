alias l.='ls'
alias ll='ls -al'
alias vi='vim'
alias pp='cd $PAPER'
alias le='cd $LEARNING'
alias dd='cd $CONTIKI'
alias ss='open $SCREENSHOT'
alias ta='open $TA'
alias pa='open $RESEARCH_PAPER'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


##
# Your previous /Users/joonkihong/.bash_profile file was backed up as /Users/joonkihong/.bash_profile.macports-saved_2017-07-03_at_23:22:41
##

# MacPorts Installer addition on 2017-07-03_at_23:22:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# setting classpath for java
jphome="~/dropbox/code/java"
classpath="./:/usr/sr/sr/local/ssj/ssj.jar:$jphome/queuesystem/bin"
export classpath

# for homebrew: python latex
export path=/usr/local/bin:/library/tex/distributions/programs/texbin:$path

export lc_all=en_us.utf-8
export lang=en_us.utf-8

# run twolfson/sexy-bash-prompt
. ~/.bash_prompt

# custom path 
export PAPER=~/Dropbox/lanada_jk/Research/plb/longrange
export LEARNING=~/Dropbox/lanada_jk/LEARNING
export CONTIKI=~/Desktop/Double-MAC
export SCREENSHOT=~/Dropbox/Screenshots
export TA=~/Dropbox/EE205/2017
export RESEARCH_PAPER=~/Dropbox/lanada_jk/Papers
