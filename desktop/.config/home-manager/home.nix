{ config, pkgs, ... }:

{
  home.username = "deck";
  home.homeDirectory = "/home/deck";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  home.packages = [
    pkgs.hyprland
    pkgs.hyprpaper
    pkgs.stow
    pkgs.swayidle
    pkgs.foot
    pkgs.waybar
    pkgs.nerd-fonts.zed-mono
    pkgs.nwg-drawer
    pkgs.nwg-look
    pkgs.mako
    pkgs.wob
    pkgs.alacarte
    pkgs.starship
    pkgs.wvkbd
    pkgs.grim
    pkgs.slurp
    pkgs.calcurse
    pkgs.dconf-editor
    pkgs.glibcLocales
    pkgs.nautilus
    pkgs.gnome-tweaks
    pkgs.fastfetch
    pkgs.brightnessctl
    pkgs.eog
  ];

  home.sessionVariables = {
    LOCALES_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
  };

  programs.home-manager.enable = true;
}
