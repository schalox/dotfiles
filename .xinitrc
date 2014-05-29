#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi &

~/.bin/mons.sh --primary

redshift &
hsetroot -fill ~/.wallpaper &
xset r rate 250 30 &
unclutter -root -noevents &
urxvtd -q -f -o && urxvtc -e tmux attach &
ario &
firefox &

conky --config="${HOME}/.conkyrc.dwm" |
    while read -r; do xsetroot -name "$REPLY"; done &
exec dwm
