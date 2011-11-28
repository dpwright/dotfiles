# UNIX config files

I use quite a lot of systems.  I have two macs at home, a \*nix box which runs
Ubuntu and FreeBSD at work, and a Windows box running Cygwin.  Keeping
configuration files synced between my different machines, and migrating settings
to a new machine, has started to become quite a headache.  I've already made a
project for [my vim setup](https://github.com/dpwright/vim.setup), so the next
obvious step was to upload the rest of my commonly-used configuration files.

I shall try and avoid uploading anything with passwords or other sensitive
information in.  That would be embarrassing.

The following program configurations are included:

## vim

My [vim.setup](https://github.com/dpwright/vim.setup) project has been added as
a submodule to this one, so changes made there should propagate here as well.

## ratpoison

Ratpoison is my window manager of choice across systems using X-Windows.  I have
a rather script-driven setup with different workspaces for different tasks I
perform, switchable with <Cmd-key>Fn, where n is the workspace number.

There is a set of scripts for ratpoison called rpws which accomplish a similar
task, but somehow I never quite got along with them so I wrote my own.
