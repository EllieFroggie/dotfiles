#!/bin/bash

killall -q waybar

while pgrep -x waybar >/dev/null; do sleep 1; done

waybar -c $HOME/.config/waybar/hyprland -s $HOME/.config/waybar/style.css 