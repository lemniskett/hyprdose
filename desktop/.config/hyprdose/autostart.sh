#!/usr/bin/env bash

source ~/.config/hyprdose/angelrc || true

i() {
    gsettings set org.gnome.desktop.interface "$1" "$2"
}

w() {
    gsettings set org.gnome.desktop.wm.preferences "$1" "$2"
}

hyprpaper &
swaync &
systemctl start --user plasma-polkit-agent

w button-layout "$HYPRDOSE_WM_BUTTON_LAYOUT"
i cursor-theme "$HYPRDOSE_CURSOR_THEME"
i cursor-size "$HYPRDOSE_CURSOR_SIZE"
i font-name "$HYPRDOSE_FONT_NAME"
i document-font-name "$HYPRDOSE_FONT_NAME"
i gtk-theme "$HYPRDOSE_GTK_THEME"
i icon-theme "$HYPRDOSE_ICON_THEME"
i monospace-font-name "$HYPRDOSE_MONOSPACE_FONT_NAME"
i color-scheme "$HYPRDOSE_COLOR_SCHEME"

LD_PRELOAD="$HOME/Git/extest/target/i686-unknown-linux-gnu/release/libextest.so" steam -silent &
sleep 2
waybar --config ./.config/waybar/config-left.json --style ./.config/waybar/style-left.css &
waybar --config ./.config/waybar/config-right.json --style ./.config/waybar/style-right.css &
# ~/.config/hyprdose/svc/swayidle.sh &
~/.config/hyprdose/svc/wob.sh &
sherlock --daemonize &
sleep 3
discord --start-minimized &
slack -u &
