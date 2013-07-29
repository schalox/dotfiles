#!/bin/bash

[[ -r ~/.bashrc ]] && . ~/.bashrc

if [[ -z "$DISPLAY" && "$(tty)" = "/dev/tty1" ]]; then
    read -s -n 1 -p "Start X? [Y/n] "; echo
    [[ $REPLY =~ ^(y|Y)?$ ]] && exec startx
fi
