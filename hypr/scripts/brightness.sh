#!/bin/bash

# Function to increase volume
brightness_up() {
    brightnessctl +5%
}

# Function to decrease volume
brightness_down() {
    brightnessctl set -5%
}

# Parse the flags
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --up) brightness_up; shift ;;
        --down) brightness_down; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
done

