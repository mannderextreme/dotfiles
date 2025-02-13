#!/bin/bash
APPS="hyprpaper hypridle hyprlock mako kitty waybar tmux"

pacman -Syu
pacman -S $APPS
