#!/usr/bin/env bash

swayidle -w \
    timeout 900 "hyprctl dispatch dpms off" \
    resume "hyprctl dispatch dpms on"
