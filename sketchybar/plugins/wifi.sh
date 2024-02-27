#!/bin/sh

# The wifi_change event supplies a $INFO variable in which the current SSID
# is passed to the script.

if [ "$SENDER" = "wifi_change" ]; then
    WIFI=$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I  | awk -F' SSID: '  '/ SSID: / {print $2}')
  sketchybar --set $NAME label="${WIFI}"
  WIFI=$()
fi
