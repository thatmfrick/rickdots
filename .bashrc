#!/usr/bin/env bash

source "$HOME/.config/bash/color_themes/theme"
source "$HOME/.config/bash/cmd_prompt.sh"
source "$HOME/.config/bash/functions.sh"

#History tweaks
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export DISPLAY=:0
export EDITOR=nvim
export EZA_CONFIG_DIR="$HOME/.config/eza"

unset LS_COLORS EZA_COLORS

#Aliases

alias fastfetch='~/.config/fastfetch/nerdfetch.sh'
alias ..='cd .. 2>/dev/null'
alias ls='eza -1 --icons=auto'
alias ll='eza -1lha --icons=auto'
alias grep='grep --color=auto'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# enable bash completion in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

tmux_f

# shopt -s autocd
#
# silence_autocd() {
#   exec {BASH_XTRACEFD}>/dev/null
# }
#
# silence_autocd

# Created by `pipx` on 2026-06-09 22:03:05
export PATH="$PATH:/home/rick/.local/bin"
