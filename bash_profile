export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export EDITOR='subl -w'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n🐙  \[\033[1;36m\]\W\[\033[32m\]\$(parse_git_branch) \[\033[1;33m\]>> \[\033[00m\]"


### SHIMS ###

# nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#Aliases

alias e="subl"
alias ll="ls -a1"
alias chrome="open -a /Applications/Google\ Chrome.app/"
alias be="bundle exec"

export CLICOLOR=1
export LSCOLORS=FxFxBxDxCxegedabagacad
alias ls='ls -GFh'
