#!/bin/sh

C=$(docker ps | wc -l | tr -d '')
C=$(echo "$C" | awk '{$C=$C};1')

echo $C

sketchybar --set docker label="$C lol"

echo $C
