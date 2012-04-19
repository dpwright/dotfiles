# UNIX config files

I use quite a lot of systems.  I have two macs at home, a \*nix box which runs
Ubuntu and FreeBSD at work, and a Windows box running Cygwin.  Keeping
configuration files synced between my different machines, and migrating settings
to a new machine, has started to become quite a headache.  I've already made a
project for [my vim setup](https://github.com/dpwright/.vim), so the next
obvious step was to upload the rest of my commonly-used configuration files.

I shall try and avoid uploading anything with passwords or other sensitive
information in.  That would be embarrassing.

The following program configurations are included:

## Installation

Clone the repo:

```bash
git clone --recursive git://github.com/dpwright/dotfiles.git 
```

And then run the installer:

```bash
dotfiles/install.sh
```

The installer just sets up symlinks to the dotfiles contained within.  You could
selectively symlink just the ones you want to use instead, if you like.

## vim

I have recently removed my vim setup as a submodule from this repo.  If you'd
like my vim setup, please clone the [.vim](https://github.com/dpwright/.vim)
repository separately.

I do have a little vim session file stored in .todo/.session, which gives me
tasklist-like functionality in vim.  Since it isn't really a part of my vim
setup, I've kept  that in this repo for now.  Use "cd ~/.todo; vim -S .session"
to use it.

## bash

I stole my prompt from Cygwin.  I tend to modify the colour across different
machines so I can keep track of which one I'm working with.

Other than that, just a few aliases and settings.

## ratpoison

Ratpoison is my window manager of choice across systems using X-Windows.  I have
a rather script-driven setup with different workspaces for different tasks I
perform, switchable with &lt;Cmd-key&gt;Fn, where n is the workspace number.

There is a set of scripts for ratpoison called rpws which accomplish a similar
task, but somehow I never quite got along with them so I wrote my own.

## mutt

My mutt configuration files are broken down into sections which are stored in
the ~/.mutt folder and sourced by my ~/.muttrc.  I have not committed my
accounts file for obvious reasons.

I make use of a number of external tools in my mutt setup.  Of course you can
take a look at my settings and copy what you like but if you want to use all of
my mutt files as-is you will need the following prerequisites:-

* [muttprint](http://muttprint.sourceforge.net/)
  * ...which in turn requires Perl and LaTeX
  * My copy of muttprint is slightly customised to allow for better printing of
    Japanese in emails.  If I find time I'd like to submit my changes as a
    FreeBSD port or something.
* [mhtview](http://devio.us/~ndr/sw/mhtview.php)
  * I customised mine to open the file in firefox instead of opera
* [abook](http://abook.sourceforge.net/)
* [aqua](http://www.chipstips.com/?p=550)
* Any PDF viewer

Thanks to [Armin Wolfermann](http://wolfermann.org/) for his
[abook-autoexport](http://www.wolfermann.org/abook-autoexport) script which I
have copied into the .mutt/bin folder.

## newsbeuter

I use newsbeuter to read various RSS feeds.  The configuration just gives me
some vim-like bindings for navigating the feed list

## sakura

I switched from xterm to [sakura](https://launchpad.net/sakura) because the font
used for Japanese text in xterm is difficult to read and fails when colour is
set to bright.  Configuration just sets my font and colour preferences.
