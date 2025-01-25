#!/bin/bash

# Path to your Hyprland configuration file
HYPRLAND_CONF="$HOME/.config/hypr/hyprland.conf"

# Check if DP-3 is connected using wlr-randr
if wlr-randr | grep -q "DP-3"; then
    # DP-3 is found, update hyprland.conf accordingly
    sed -i 's/^monitor=eDP-1.*/monitor=eDP-1,disable/' "$HYPRLAND_CONF"
    sed -i 's/^#monitor=DP-3.*/monitor=DP-3,preferred,auto,1.5/' "$HYPRLAND_CONF"
else
    # DP-3 is not found, update hyprland.conf accordingly
    sed -i 's/^monitor=eDP-1.*/monitor=eDP-1,preferred,auto,auto/' "$HYPRLAND_CONF"
    sed -i 's/^monitor=DP-3.*/#monitor=DP-3,preferred,auto,1.5/' "$HYPRLAND_CONF"
fi

# Optionally, reload Hyprland to apply the changes (uncomment the following line if needed)
# hyprctl reload

