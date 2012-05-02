#!/bin/bash
#termset.sh -- Sets the correct override for TERM.
#As found in the comments here: http://vim.wikia.com/wiki/256_colors_in_vim

if [ "$TERM" = "xterm" ] ; then
	if [ -z "$COLORTERM" ] ; then
		if [ -z "$XTERM_VERSION" ] ; then
			echo "Warning: Terminal wrongly calling itself 'xterm'."
		else
			case "$XTERM_VERSION" in
				"XTerm(256)") TERM="xterm-256color" ;;
			"XTerm(88)") TERM="xterm-88color" ;;
		"XTerm") ;;
	*)
		echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
		;;
esac
		fi
	else
		case "$COLORTERM" in
			gnome-terminal)
				# Those crafty Gnome folks require you to check COLORTERM,
				# but don't allow you to just *favor* the setting over TERM.
				# Instead you need to compare it and perform some guesses
				# based upon the value. This is, perhaps, too simplistic.
				TERM="gnome-256color"
				;;
			*)
				echo "Warning: Unrecognized COLORTERM: $COLORTERM"
				;;
		esac
	fi
fi

SCREEN_COLORS="`tput colors`"
if [ -z "$SCREEN_COLORS" ] ; then
	case "$TERM" in
		screen-*color-bce)
			echo "Unknown terminal $TERM. Falling back to 'screen-bce'."
			export TERM=screen-bce
			;;
		*-88color)
			echo "Unknown terminal $TERM. Falling back to 'xterm-88color'."
			export TERM=xterm-88color
			;;
		*-256color)
			echo "Unknown terminal $TERM. Falling back to 'xterm-256color'."
			export TERM=xterm-256color
			;;
	esac
	SCREEN_COLORS=`tput colors`
fi
if [ -z "$SCREEN_COLORS" ] ; then
	case "$TERM" in
		gnome*|xterm*|konsole*|aterm|[Ee]term)
			echo "Unknown terminal $TERM. Falling back to 'xterm'."
			export TERM=xterm
			;;
		rxvt*)
			echo "Unknown terminal $TERM. Falling back to 'rxvt'."
			export TERM=rxvt
			;;
		screen*)
			echo "Unknown terminal $TERM. Falling back to 'screen'."
			export TERM=screen
			;;
	esac
	SCREEN_COLORS=`tput colors`
fi
