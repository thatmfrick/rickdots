BOLD=$'\e[1m'
RESET=$'\e[0m'

# top line
PS1=$'\[${DRAGON_BLUE}\]┏━ \[${RESET}\]'

# exit code
PS1+='$(ret=$?;(($ret!=0)) && echo "\[${AUTUMN_RED}\]($ret) \[${RESET}\]")'

# username
PS1+='\[${SURIMI_ORANGE}\]\[${BOLD}\]$(((UID==0)) && echo "\[${COLOR16}\]")\u\[${RESET}\] on '

# hostname
PS1+='\[${SPRING_VIOLET1}\]\h\[${RESET}\] in '

# uname
# PS1+='\[${BLUE}\]'"$(uname -o)"'\[${RESET}\] in '

# cwd
PS1+='\[${AUTUMN_GREEN}\]\w '
# git branch

PS1+='$(branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null); [[ -n $branch ]] && echo "\[${SPRING_VIOLET1}\](\[${SAKURA_PINK}\]git:$branch\[${SPRING_VIOLET1}\]) ")'

# bottom line
PS1+=$'\n\[${DRAGON_BLUE}\]┗━❯ \[${RESET}\]'
PS1+=$'\[${CARP_YELLOW}\]\[${BOLD}\]$ \[${RESET}\]'

_prompt_command() {
    printf '\n'
    local user=$USER
    local host=${HOSTNAME%%.*}
    local pwd=${PWD/#$HOME/\~}
    local ssh=
    [[ -n $SSH_CLIENT ]] && ssh='[ssh] '
    printf "\033]0;%s%s@%s:%s\007" "$ssh" "$user" "$host" "$pwd"
}

PROMPT_DIRTRIM=4

PROMPT_COMMAND='_prompt_command'
