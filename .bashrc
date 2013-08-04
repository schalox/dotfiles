#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

localrc="$HOME/.bashrc.local"
[[ -r "$localrc" ]] && . "$localrc"
unset localrc

bash_dir="$HOME/.bash.d"
if [[ -d $bash_dir ]]; then
    for i in ${bash_dir}/*; do
        [[ -r "$i" ]] && . "$i"
    done
fi
unset bash_dir i

HISTCONTROL='erasedups:ignorespace'
HISTFILESIZE=10000
HISTSIZE=10000
PROMPT_COMMAND="history -n; history -w; history -c; history -r; ${PROMPT_COMMAND:-:}"

# update window size after each command
# append to history file, don't overwrite it
shopt -s checkwinsize histappend

# colors for ls
dcolors="$HOME/.config/dircolors"
[[ -r "$dcolors" ]] && eval $(dircolors -b "$dcolors")
unset dcolors

# add extra tab completions to git
git_comp="/usr/share/git/completion/git-completion.bash"
[[ -r "$git_comp" ]] && . "$git_comp"

unset git_comp
