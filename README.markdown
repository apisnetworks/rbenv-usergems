# rbenv-usergems

rbenv-usergems is a [rbenv][rbenv] plugin that separates gem storage from 
your rbenv installation.  With rbenv-usergems, gems and shims are stored 
in the `~/.rbenv-usergems` directory, separate from your main rbenv directory.

This is helpful when using a system-wide rbenv installation at `/opt/rbenv`. 
(or `/usr/bin/rbenv`)  This way `/opt/rbenv` can be owned by root, and 
user-installed shims and gems are stored in `~/.rbenv-usergems`.

To learn more, see the [wiki page](https://github.com/andyl/rbenv-usergems/wiki).

## Installation

1. Clone rbenv-usergems to the `$RBENV_ROOT/plugins` directory:

        $ mkdir -p $RBENV_ROOT/plugins
        $ cd $RBENV_ROOT/plugins
        $ git clone git://github.com/andyl/rbenv-usergems.git

2. Add RBENV_ROOT to your init file

        $ echo 'export RBENV_ROOT="/opt/rbenv"' >> ~/.bashrc

3. Add a usergem-specific rbenv init to your shell to enable user shims and autocompletion:

        $ echo 'eval "$(rbenv usergems-init -)"' >> ~/.bashrc

4. And you're done.

Note: with rbenv-usergems, you do NOT have to setup a `~/.rbenv` as you would in a normal 
rbenv installation.

## Usage

Use rbenv commands and install gems as you normally would.  Instead of using `rbenv rehash`,
use `rbenv usergems-rehash`.

A gem directory is created for each of your rubies under `~/.rbenv-usergems`.

    ~/.rbenv-usergems
      shims
        all of your shims...
      1.8.7-p453
        all of the gems for this ruby...
      1.9.3-p125
        all of the gems for this ruby...
      1.9.3-p194
        all of the gems for this ruby...

## License

This code is placed in the public domain.  Use it as you wish. 

[rbenv]: http://github.com/sstephenson/rbenv
