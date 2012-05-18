#!/usr/bin/env bash

FILES_TO_INSTALL="
	.Xresources
	.bash_completion.d
	.bash_profile
	.config
	.cvsignore
	.dir_colors
	.fonts.conf
	.gitconfig
	.irssi
	.mailcap
	.mutt
	.muttprintrc
	.muttrc
	.newsbeuter
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
