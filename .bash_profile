#!/bin/bash

tty=$(tty) 
if [ "$tty" = "/dev/ttyv7" ] 
then
	startx
	logout
fi

case $HOSTNAME in
	cardinals*)  COL='31m';;   #Red
	furnace*)    COL='32m';;   #Green
	horace*)     COL='45;30m';; #Pink BG
	forge*)      COL='44;37m';; #Blue BG
	mojo*)       COL='35m';;   #Pink
	dd-macbook*) COL='36m';;   #Cyan
	dd-macmini*) COL='34m';;   #Blue
	*)           COL='37m';;   #White
esac

export TERM='xterm'
export EDITOR="vim"
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

export PATH=~/bin:$PATH

export PAGER=lv

alias ls='ls -G'
alias vimroom='vim +VimroomToggle +mat "+set wrap"'
alias vncd='x11vnc -usepw -display ":0"'
alias tmux='tmux -2' #Enable 256-colour tmux by default

#Linux works differently
if [ "${OSTYPE}" == "linux-gnu" ] || [ "${OSTYPE}" == "linux" ]; then
	alias ls='ls --color=always'
fi

source ~/.bash_completion.d/*

export GIT_PS1_SHOWDIRTYSTATE=1     #... untagged(*) and staged(+) changes
export GIT_PS1_SHOWSTASHSTATE=1     #... if something is stashed($)
export GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)

export PS1='\n\[\e[$COL\]\u@\h \[\e[33m\]\w\[\e[1;30m\]$(__git_ps1 " (%s)")\[\e[0m\]\n\$'

source ~/bin/sdkpaths.sh

