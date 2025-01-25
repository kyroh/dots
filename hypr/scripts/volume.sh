#!/bin/bash

# Function to increase volume
volume_up() {
    pactl set-sink-volume @DEFAULT_SINK@ +5%
}

# Function to decrease volume
volume_down() {
    pactl set-sink-volume @DEFAULT_SINK@ -5%
}

# Function to toggle mute
toggle_mute() {
    pactl set-sink-mute @DEFAULT_SINK@ toggle
}

# Parse the flags
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --volume-up) volume_up; shift ;;
        --volume-down) volume_down; shift ;;
        --mute) toggle_mute; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
done

