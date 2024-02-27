#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

sketchybar --set $NAME background.drawing=$SELECTED 

#if [ $SELECT="true" ]; then
#    sketchybar --set $NAME icon.color=0xbb000000
#fi
