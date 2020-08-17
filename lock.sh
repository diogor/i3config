#!/bin/bash
[ ! -e /tmp/screen.png ] || rm /tmp/screen.png
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
CONFIG_ROOT=$HOME/.config/i3

convert /tmp/screen.png $CONFIG_ROOT/lock.png -gravity center -composite -matte  /tmp/screen.png
 
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
# i3lock  -I 10 -d -e -u -n -i /tmp/screen.png
i3lock -e -u -n -i /tmp/screen.png
