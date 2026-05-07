export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EZA_CONFIG_DIR="$HOME/.config/eza"
export EDITOR=nvim
export DISPLAY=:0
export PATH="/opt/android-sdk/platform-tools:$PATH"

plugins=(git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

source $ZSH/oh-my-zsh.sh
unset LS_COLORS
alias ls='eza --color=always --icons'
alias fastfetch='~/.config/fastfetch/nerdfetch.sh'

clear(){
  command clear
  fastfetch
}

fastfetch

#yazy
function y() { 
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

eval "$(starship init zsh)"
