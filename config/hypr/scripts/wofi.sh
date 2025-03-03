#!/usr/bin/env bash
STYLE="$HOME/packages/rosepine/wofi/rosepine/style.css"
CONFIG="$HOME/.config/wofi/config"

if [[ ! $(pidof wofi) ]]; then
    wofi --config "${CONFIG}" --style "${STYLE}"
else
    pkill wofi
fi
