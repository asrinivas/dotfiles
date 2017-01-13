# Random exports
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LC_CTYPE=en_US.UTF-8
export EDITOR='vim'
export SBT_SCALA_VERSION=2.10.4

# Random aliases
alias wget="curl -O"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ll='ls -la'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gf='git fetch origin'
alias gr='git rebase origin'
alias gl='git prettylog'
alias gd='git cdiff'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias grf="git checkout master && git pull && git co - && git merge master"

# Git prompt/completion
source ~/.git-prompt.sh
source ~/.git-completion.sh
#PS1='[\u@\h \W\$(__git_ps1 " (%s)")]\ $ '
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
export GIT_PS1_SHOWCOLORHINTS=1

# Vagrant settings
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export VAGRANT_VMWARE_CLONE_DIRECTORY=~/VMs

# Path settings
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export PATH=$HOME/.node/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=$PATH:$(brew --prefix mysql)/bin
export PATH=$PATH:~/.play

# Load RVM into a shell session *as a function*

# AWS
if [ -f ~/.aws ]; then
    source ~/.aws
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
