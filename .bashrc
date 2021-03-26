#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#alias vim='nvim'
alias iusearchbtw='neofetch --logo'
alias cd..='cd ..'

export PS1="\[\e[1;34m\]\u\[\e[m\]@\h \[\e[34m\]\w\[\e[m\]> "
export PATH="/usr/local/bin/Discord:/home/trevorskupien/scripts:/home/trevorskupien/dwm/scripts:$PATH"

# Start DWM automatically on first TTY
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
else
	#Display neofetch and file directory on other tty
	#neofetch
	ls
fi
