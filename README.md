# Hyprdose

My attempt at making Hyprland usable in Steam Deck, obviously has [Needy Girl Overdose](https://store.steampowered.com/app/1451940/NEEDY_STREAMER_OVERLOAD/) nuance.

![desktop](screenshots/hyprdose-desktop.png)

## Installation

Add `angelctl` to your path, then stow everything inside desktop directory.

```sh
cd desktop
echo ". ~/.angelbash" >> ~/.bashrc
stow -t ~ .
```

## Dependencies

See [`build.sh`](https://github.com/lemniskett/bazzite-deck-hyprdose/blob/master/build.sh)

## Steam Library Capsules

Use SteamGridDB to change Banner, Icon, and Capsules using images in this repository.

![steam](screenshots/hyprdose-steam.jpg)