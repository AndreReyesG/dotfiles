export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

export PATH="$PATH:/opt/nvim/"

# Alias
alias para="cd ~/Documentos/PARA"
# TMUX
alias ta="tmux a"
# Habilita verdadero color
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
