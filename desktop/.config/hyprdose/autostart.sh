#!/usr/bin/env bash

source ~/.config/hyprdose/angelrc || true

i() {
    gsettings set org.gnome.desktop.interface "$1" "$2"
}

w() {
    gsettings set org.gnome.desktop.wm.preferences "$1" "$2"
}

s() {
    systemctl --user start $1
}

s hyprpaper
s swayidle
s mako
s wob
s nwg-drawer

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
s waybar@left
