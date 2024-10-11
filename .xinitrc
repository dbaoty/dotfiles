#!/usr/bin/env bash

xrandr --output DP-2 --mode 2560x1440 --rate 120 &
exec i3 &
oneko -rv -tofocus &
feh --bg-scale --no-fehbg ~/.config/wallpapers/wwallhaven-vqjj1p.png &
picom --vsync --fade-delta 8 --fade-in-step 0.04 --fade-out-step 0.04
