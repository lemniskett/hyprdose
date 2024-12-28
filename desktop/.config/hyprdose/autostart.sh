#!/usr/bin/env bash

source ~/.config/hyprdose/angelrc || true

i() {
    gsettings set org.gnome.desktop.interface "$1" "$2"
}

w() {
    gsettings set org.gnome.desktop.wm.preferences "$1" "$2"
}

hyprpaper &
mako &
/usr/libexec/hyprpolkitagent &

w button-layout "$HYPRDOSE_WM_BUTTON_LAYOUT"
i cursor-theme "$HYPRDOSE_CURSOR_THEME"
i cursor-size "$HYPRDOSE_CURSOR_SIZE"
i font-name "$HYPRDOSE_FONT_NAME"
i document-font-name "$HYPRDOSE_FONT_NAME"
i gtk-theme "$HYPRDOSE_GTK_THEME"
i icon-theme "$HYPRDOSE_ICON_THEME"
i monospace-font-name "$HYPRDOSE_MONOSPACE_FONT_NAME"
i color-scheme "$HYPRDOSE_COLOR_SCHEME"

sleep 2
waybar --config ./.config/waybar/config-left.json --style ./.config/waybar/style-left.css &
~/.config/hyprdose/svc/swayidle.sh &
~/.config/hyprdose/svc/wob.sh &
