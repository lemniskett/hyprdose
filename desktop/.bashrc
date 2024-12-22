#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# albafetch () {
#     screen_width="$(stty size | cut -d ' ' -f 2)"
#     if [[ $screen_width -ge 93 ]]; then
#         /usr/bin/albafetch --ascii ~/.config/foot/kangel -c purple $@
#     else
#        /usr/bin/albafetch --no-logo -c purple $@
#     fi
#}

angelfetch() {
    roll=$((1 + RANDOM % 2))
    case "$roll" in
        1)
        fastfetch --sixel ~/.config/hyprdose/fetch-ame.png
	;;
        2)
        fastfetch --sixel ~/.config/hyprdose/fetch-kangel.png
        ;;
        *)
        fastfetch
        ;;
    esac
}


if [[ "$(tty)" == "/dev/tty4" ]]; then
    source ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    nixGL Hyprland
fi

alias aa="distrobox enter archangel"
alias ssh="env TERM=xterm-256color ssh "
alias ls='ls --color=auto'
alias grep='grep --color=auto'
eval "$(starship init bash)"
angelfetch
