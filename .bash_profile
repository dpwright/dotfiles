#!/bin/bash

export TERM='xterm'
export EDITOR="vim"
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.utf8

export PATH=~/bin:$PATH

export PS1="\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$"

export PAGER=lv

alias ls='ls -F --color=tty --show-control-chars'
alias vimroom='vim +VimroomToggle +mat "+set wrap"'
alias vncd='x11vnc -usepw -display ":0"'

