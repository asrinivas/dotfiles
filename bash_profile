export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PATH=~/bin:$PATH
export LC_CTYPE=en_US.UTF-8
alias wget="curl -O"
#export GIT_PS1_SHOWDIRTYSTATE=1
#PS1='\u:\w$(__git_ps1 " (%s) ")\$ '
#. /usr/local/etc/bash_completion.d/git-completion.bash
#. /usr/local/etc/bash_completion.d/git-prompt.sh
alias pyack="ack --type=python"

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
export EDITOR=vim

alias ll='ls -la'

# Use VMware Fusion by default
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export VAGRANT_VMWARE_CLONE_DIRECTORY=~/VMs

export PATH=$PATH:$(brew --prefix mysql)/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
