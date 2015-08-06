export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="muse"
plugins=(git)
export PATH="$HOME/bin:$PATH"
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export TERM=xterm-256color

alias dst='docker start'
alias dsp='docker stop'
alias dkill='docker kill'
alias dps='docker ps'
alias dpsa='docker ps -a'

