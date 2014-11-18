#!/bin/sh
xrdb -merge ~/.Xresources &
nm-applet &
volwheel &
dropboxd &
setxkbmap dk &
exec dbus-launch /usr/bin/awesome
