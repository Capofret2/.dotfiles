#!/bin/bash

entries="\tShutdown\n\tReboot\n\tLock\n󰤄\tSuspend\n󰍃\tLogout"

selected=$(echo -e "$entries"|wofi --style ~/.config/wofi/powermenu.css -i -Dhide_search=true --dmenu --height 230 | awk '{print tolower($2)}')

case $selected in
  logout)
    exec hyprctl dispatch exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
  lock)
    exec hyprlock --quiet;;
esac

