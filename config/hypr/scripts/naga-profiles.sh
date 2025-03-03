#!/bin/bash

HWDB_FILE="/etc/udev/hwdb.d/90-razer-naga.hwdb"
VID_PID1="b0003v1532p00A8"
VID_PID2="b0003v1532p00A7"
MODE=$1

# Check for root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!"
   exit 1
fi

if [[ "$MODE" == "--rs3" ]]; then
    echo "Switching to RuneScape 3 mode..."
    MAPPING="
evdev:input:$VID_PID1*
 KEYBOARD_KEY_7001e=rightbrace
 KEYBOARD_KEY_7001f=o
 KEYBOARD_KEY_70020=i
 KEYBOARD_KEY_70021=leftbrace
 KEYBOARD_KEY_70022=semicolon
 KEYBOARD_KEY_70023=apostrophe
 KEYBOARD_KEY_70024=comma
 KEYBOARD_KEY_70025=m
 KEYBOARD_KEY_70026=equal

evdev:input:$VID_PID2*
 KEYBOARD_KEY_7001e=rightbrace
 KEYBOARD_KEY_7001f=o
 KEYBOARD_KEY_70020=i
 KEYBOARD_KEY_70021=leftbrace
 KEYBOARD_KEY_70022=semicolon
 KEYBOARD_KEY_70023=apostrophe
 KEYBOARD_KEY_70024=comma
 KEYBOARD_KEY_70025=m
 KEYBOARD_KEY_70026=equal
"
elif [[ "$MODE" == "--ffxiv" ]]; then
    echo "Switching to Final Fantasy XIV mode..."
    MAPPING="
evdev:input:$VID_PID1*
 KEYBOARD_KEY_7001e=1
 KEYBOARD_KEY_7001f=2
 KEYBOARD_KEY_70020=3
 KEYBOARD_KEY_70021=4
 KEYBOARD_KEY_70022=5
 KEYBOARD_KEY_70023=6
 KEYBOARD_KEY_70024=7
 KEYBOARD_KEY_70025=8
 KEYBOARD_KEY_70026=9

evdev:input:$VID_PID2*
 KEYBOARD_KEY_7001e=1
 KEYBOARD_KEY_7001f=2
 KEYBOARD_KEY_70020=3
 KEYBOARD_KEY_70021=4
 KEYBOARD_KEY_70022=5
 KEYBOARD_KEY_70023=6
 KEYBOARD_KEY_70024=7
 KEYBOARD_KEY_70025=8
 KEYBOARD_KEY_70026=9
"
else
    echo "Usage: $0 --rs3 | --ffxiv"
    exit 1
fi

# Write new mapping to hwdb
echo "$MAPPING" > "$HWDB_FILE"

# Apply changes
echo "Updating hardware database..."
systemd-hwdb update
udevadm trigger

echo "Mode switched successfully!"


