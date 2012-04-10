#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/local/lib/X11/xinit/.Xresources
sysmodmap=/usr/local/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /usr/local/lib/X11/xinit/xinitrc.d ] ; then
	for f in /usr/local/lib/X11/xinit/xinitrc.d/*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#Japanese input settings
export XIM=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export XIM_PROGRAM="ibus-daemon"
export XIM_ARGS="-r --daemonize --xim"

${XIM_PROGRAM} ${XIM_ARGS} &

# Always run VNC in the background
x11vnc -display :0 -never-shared -forever -usepw &

xsetroot -display :0.0 -solid Black &
unclutter &
numlockx

exec awesome

