#!/bin/bash

tty=$(tty) 
if [ "$tty" = "/dev/ttyv7" ] 
then
	startx
	logout
fi

case $HOSTNAME in
	furnace*)    COL='32m';;   #Green
	forge*)      COL='34m';;   #Blue
	mojo*)       COL='35m';;   #Pink
	cardinals*)  COL='31m';;   #Red
	dd-macbook*) COL='36m';;   #Cyan
	*)           COL='37m';;   #White
esac

export TERM='xterm'
export EDITOR="vim"
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

export PATH=~/bin:$PATH

export PS1="\n\[\e[$COL\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$"

export PAGER=lv

alias ls='ls -G'
alias vimroom='vim +VimroomToggle +mat "+set wrap"'
alias vncd='x11vnc -usepw -display ":0"'
alias tmux='tmux -2' #Enable 256-colour tmux by default

#Linux works differently
if [ "${OSTYPE}" == "linux-gnu" ] || [ "${OSTYPE}" == "linux" ]; then
	alias ls='ls --color=always'
fi

source ~/bin/sdkpaths.sh

