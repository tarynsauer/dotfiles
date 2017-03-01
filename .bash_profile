[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s ~/.bashrc ]] && source ~/.bashrc

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias subl='/Applications/Sublime\ Text\.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias be='bundle exec'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$PURPLE\u $CYAN\w$GREEN\$(parse_git_branch) \n$YELLOW[\#] > $RESETCOLOR"
  export PS2="| > $RESETCOLOR"
}

prompt

# added by Anaconda 2.3.0 installer
export PATH="/Users/tarynsauer/anaconda/bin:$PATH"
export RANCHER_ACCESS_KEY="476664520254BD0791B4"
export RANCHER_SECRET_KEY="cDquPrQHb1pSaWFJhURMwFmg7SBqYonPhMELL11v"
export RANCHER_URL="https://rancher-us-east-1.raise.com/v1/projects/1a7"

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="/usr/local/sbin:$PATH"
