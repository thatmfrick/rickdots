export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EZA_CONFIG_DIR="$HOME/.config/eza"
export EDITOR=nvim

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

eval "$(starship init zsh)"
