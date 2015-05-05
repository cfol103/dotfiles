alias shuf=gshuf
alias mvim="open -a MacVim"
alias ls="ls -FG"
source ~/.profile
#rvm --default 1.9.3
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
# Should allow import of required ggrc modules
PYTHONPATH="/Users/cfol103/work/ggrc-core/src/:$PYTHONPATH"
export PYTHONPATH
export PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;35m\]'; fi)\[\033[0;34m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[0;31m\]:(\[\033[0;34m\] \")\\$\[\033[00m\] "
export PATH=/Applications/microchip/mplabc32/v2.02/bin:$PATH
source ~/git-completion.bash
alias rlogin="ssh -l cfol103 rlogin.cs.vt.edu"
export PATH=$PATH:~/bin
export PATH=$PATH:/Users/cfol103/vthacks/AWS-ElasticBeanstalk-CLI-2.6.0/eb/linux/python2.7

export PATH=/usr/local/bin:$PATH

# added by Anaconda 1.9.2 installer
export PATH="/Users/cfol103/anaconda/bin:$PATH"

# Pebble SDK
export PATH=/Users/cfol103/pebble-dev/PebbleSDK-current/bin:$PATH
export SCALA_HOME="/usr/local/share/scala-2.11.4/"
export PATH="$SCALA_HOME/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
