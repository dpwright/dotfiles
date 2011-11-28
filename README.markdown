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

In addition to this, I have a little vim session file stored in .todo/.session.
I then run "cd ~/.todo; vim -S .session" to get a little vim-based TODO list.

## ratpoison

Ratpoison is my window manager of choice across systems using X-Windows.  I have
a rather script-driven setup with different workspaces for different tasks I
perform, switchable with <Cmd-key>Fn, where n is the workspace number.

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
