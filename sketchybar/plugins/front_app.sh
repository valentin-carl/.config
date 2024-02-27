#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

echo $INFO>$HOME/temp.txt
echo "hi">>$HOME/temp.txt


if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set front_app label="$INFO"
fi
