#!/bin/bash

screenshot_dir="$HOME/Pictures/Screenshots"

screenshot_file="$screenshot_dir/screenshot-$(date +%Y%m%d-%H%M%S).png"

grim -g "$(slurp)" "$screenshot_file"

