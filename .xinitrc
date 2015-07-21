#!/bin/sh
xrdb -merge ~/.Xresources &
nm-applet &
volwheel &
dropbox &
setxkbmap dk &
cbatticon &
exec dbus-launch /usr/bin/awesome
