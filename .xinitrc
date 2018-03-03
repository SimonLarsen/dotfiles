#!/usr/bin/env bash
nm-applet &
dropbox start &
xfce4-power-manager &
xrdb -merge .Xresources &
pasystray &
fluxgui &
blueman-applet &
exec awesome
