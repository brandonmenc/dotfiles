alias gs='git status'

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

alias glg='git lg'
alias gfix='git commit --fixup $(git rev-parse HEAD)'

