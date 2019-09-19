export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh/custom

ZSH_THEME="brm-light"

HOMEBREW_PATH=$(brew --prefix)

fpath=(
  $HOME/.zsh/func
  $HOMEBREW_PATH/share/zsh/site-functions
  $fpath
)

plugins=(
  git
  mix
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

alias ls='CLICOLOR_FORCE=1 ls -G'

# count files
alias nf='ls -1 | wc -l'

# dir popping
alias '..'='cd ..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

# GO Language
export GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# other stuff
unalias gm
stty erase ^H
bindkey -e

# history search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

alias sudo='sudo '

for f in $HOME/.zsh/*.(sh|zsh); do
  source $f
done

