#!/usr/bin/env bash

FILES_TO_INSTALL="
	.bash_completion.d
	.bash_profile
	.config
	.fonts.conf
	.irssi
	.mailcap
	.mutt
	.muttprintrc
	.muttrc
	.newsbeuter
	.ratpoison
	.ratpoisonrc
	.tmux.conf
	.todo
	.xinitrc
	bin"

CURDIR="$(pwd)"
cd "$( dirname "${BASH_SOURCE[0]}" )"

for FILE in $FILES_TO_INSTALL
do
	[ -e ~/$FILE ] && mv ~/$FILE ~/$FILE.bak
	ln -s "$PWD/$FILE" ~/"$FILE"
done

cd "$CURDIR"
