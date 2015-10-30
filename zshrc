# Path to your oh-my-zsh installation.
export ZSH=/Users/anirudh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime osx git-flow git-extras npm node theme bower brew bundler coffee jsontools python battery rails, history, history_substring_search, play)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Iterable aliases
alias iterable='cd ~/workspace/Iterable'
alias prune="play '~run'"
alias -g te='"tail -f -n 100 /usr/local/var/log/elasticsearch/elasticsearch_iterable_prod.log"'
alias -g tesl='"tail -f -n 100 /usr/local/var/log/elasticsearch/elasticsearch_iterable_prod_index_search_slowlog.log"'
alias -g teil='"tail -f -n 100 /usr/local/var/log/elasticsearch/elasticsearch_iterable_prod_index_indexing_slowlog.log"'

# Random exports
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LC_CTYPE=en_US.UTF-8
export EDITOR='vim'
export SBT_SCALA_VERSION=2.10.4
export DEFAULT_USER='anirudh'
export GIT_PAGER="less -FX"

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
fpath=(~/.zsh/completion $fpath)
export GIT_PS1_SHOWCOLORHINTS=1

setopt interactivecomments

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
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Urlencode text
function urlencode {
  print "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# AWS
if [ -f ~/.aws ]; then
    source ~/.aws
fi
