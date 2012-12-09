#!/usr/bin/env bash

FILES_TO_INSTALL="
	.Xresources
	.bash_profile
	.config
	.cvsignore
	.dir_colors
	.gitconfig
	.irssi
	.mailcap
	.mutt
	.muttprintrc
	.muttrc
	.newsbeuter
	.offlineimap.utf7.py
	.pentadactyl
	.pentadactylrc
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
