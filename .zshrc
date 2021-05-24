ZSH_DISABLE_COMPFIX="true"

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
  golang
  kubectl
  mix
  docker
  docker-compose
  docker-machine
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

alias ls='LSCOLORS="exfxcxdxbxegedabagacad" ls -FGh'
alias lls='/bin/ls'

alias du='du -h'

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
#stty erase ^H
bindkey -e

# other aliases
alias kc=kubectl
alias dc=docker-compose
alias tf=terraform
alias mk=minikube

# history search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

alias sudo='sudo '

alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

for f in $HOME/.zsh/*.(sh|zsh); do
  source $f
done


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

