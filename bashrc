#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ -z "$PS1" ]] && return

bash_dir="$HOME/.bash.d"

if [[ -d $bash_dir ]]; then
    for i in ${bash_dir}/*; do
        [[ -f "$i" ]] && . "$i"
    done
fi

unset bash_dir i