export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

export PATH="$PATH:/opt/nvim/"

# Habilita verdadero color
export TERM="xterm-256color"

# Alias
alias para="cd ~/Documentos/PARA"
alias dot="cd ~/dotfiles"
alias ta="tmux a"

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

EDITOR="nvim"

# --- Yazi ---
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/go/bin

export PATH="$HOME/.zig:$PATH"
