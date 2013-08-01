#!/bin/bash

[[ -r ~/.bashrc ]] && . ~/.bashrc

export BROWSER='firefox'
export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export PAGER='less'
export PATH="${PATH}:${HOME}/.bin"

if [[ -z "$DISPLAY" && "$(tty)" = "/dev/tty1" ]]; then
    read -s -n 1 -p "Start X? [Y/n] "; echo
    [[ $REPLY =~ ^(y|Y)?$ ]] && exec startx
fi
