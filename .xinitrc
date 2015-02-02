#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi &

~/.bin/mons --primary
~/.bin/vol -u &

redshift &
~/.bin/wp_set &
xset r rate 250 30 &
unclutter -root -noevents &
urxvtd -q -f -o && urxvtc -e tmux attach &
firefox &
pidgin &

awk -f ~/.bin/dwmbar.awk &
~/src/abs/dwm-git/dwm 2> /tmp/dwm.log
