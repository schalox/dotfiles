#!/bin/bash

[[ -r ~/.bashrc ]] && . ~/.bashrc

export BROWSER='firefox'
export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export PAGER='less'
export PATH="${PATH}:${HOME}/.bin"

type -P keychain > /dev/null && \
    eval "$(keychain --eval --quiet --agents gpg)"

if type -P mpd > /dev/null; then
    [[ ! -s ~/.mpd/pid ]] && mpd
fi

if [[ "$(date +%w)" == "0" ]]; then
    if type -P figlet > /dev/null; then
        figlet -f small "BACKUP"
    else
        echo "BACKUP"
    fi
fi

if [[ -z "$DISPLAY" && "$(tty)" = "/dev/tty1" ]]; then
    read -s -n 1 -p "Start X? [Y/n] "; echo
    [[ $REPLY =~ ^(y|Y)?$ ]] && exec startx
fi
