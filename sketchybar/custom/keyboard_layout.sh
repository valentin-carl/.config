#!/bin/sh

LAYOUT=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | egrep -w 'KeyboardLayout Name' |sed -E 's/^.+ = \"?([^\"]+)\"?;$/\1/')

# if the layout cannot be determined
if [ $LAYOUT = "" ]; then
    exit 1
fi

# normal case
if [ $LAYOUT = "German" ]; then
    LABEL="DE"
elif [ $LAYOUT = "U.S." ]; then
    LABEL="US"
else 
    LABEL="blub"
fi

# update keyboard layout in bar
sketchybar --set keyboard_layout label="$LABEL" 
