#ls + tree
lst() {
    local depth="$1" arg="$2"
    if [[ -z $depth ]]; then
        depth=1
    fi

    if [[ -z "$arg" ]]; then
        arg='.'
    fi
    eza -1 --icons=auto -T -L "$depth" "$arg"
}

#yazy
y() {
    local tmp
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd <"$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    command rm -f -- "$tmp"
}

#tmux session attach
tmux_f() {
    if [[ -n $TMUX ]]; then
        return
    fi

    if [[ $(tmux ls 2>/dev/null) ]]; then
        while true; do
            read -rn1 -p "Attach to a tmux session [y/n]? " ans
            case "$ans" in
            [Yy]*)
                sessions_n=$(tmux ls 2>/dev/null | cut -d: -f1 | wc -l)
                if ((sessions_n == 1)); then
                    tmux attach-session
                else
                    echo -e "\nAvailable sessions:\n"
                    local session_list=($(tmux ls 2>/dev/null | cut -d: -f1))
                    select session in "${session_list[@]}"; do
                        tmux attach-session -t "$session"
                    done
                fi
                clear
                return
                ;;
            [Nn]*)
                clear
                return
                ;;
            *) echo "Please answer Y or N." ;;
            esac
        done
    fi
}
