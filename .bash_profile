#!/bin/bash

[[ -r ~/.bashrc ]] && . ~/.bashrc

export AWKPATH="${AWKPATH}:${HOME}/.local/share/awk"
export BROWSER='firefox'
export EDITOR='vim'
export PAGER='less'
export PATH="${PATH}:${HOME}/.bin"

[[ -d ~/.texmf ]] && export TEXMFHOME=~/.texmf

(( "$(date '+%w')" )) || {
    if type -P figlet > /dev/null; then
        figlet -f small "BACKUP"
    else
        echo "BACKUP"
    fi
}

[[ -z $DISPLAY && $XDG_VTNR == 1 ]] && exec startx
