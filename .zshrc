ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"

plugins=(osx brew gem git github textmate vagrant composer npm zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

