# rbenv-usergems

rbenv-usergems is an extension for the [rbenv][rbenv] ruby version manager that
separates gem storage from your rbenv installation.  With rbenv-usergems, gems
and shims are stored in the ~/.rbenv-gems directory.

This separation helps when you want to setup a system-wide rbenv installation
at /opt/rbenv.  (or /usr/bin/rbenv)  In this situation, /opt/rbenv can be owned 
by root, and user-installed shims gems are stored in ~/.rbenv-gems.

To learn more, see the [wiki page](https://github.com/andyl/rbenv-usergems/wiki).

## Installation

1. Clone rbenv-usergems to the `$RBENV_ROOT/plugins` directory:

        $ mkdir -p $RBENV_ROOT/plugins
        $ cd $RBENV_ROOT/plugins
        $ git clone git://github.com/andyl/rbenv-usergems.git

2. Add the RBENV_ROOT to your shell init script

        $ echo 'export RBENV_ROOT="/opt/rbenv"' >> ~/.bash_profile

3. Add a usergem-specific rbenv init to your shell to enable user shims and autocompletion:

        $ echo 'eval "$(rbenv usergems-init -)"' >> ~/.bash_profile

4. And you're done.

Note: with rbenv-usergems, you do NOT have to setup a ~/.rbenv as you would in a normal rbenv installation.

## Usage

Just use rbenv commands and install gems as you normally would.  A gem dqirectory
is created for each of your rubies.

    ~/.rbenv-gems
      shims
        all of your shims...
      1.8.7-p453
        all of the gems for this ruby...
      1.9.3-p125
        all of the gems for this ruby...
      1.9.3-p194
        all of the gems for this ruby...

## License

This code is placed in the public domain by the author, Andy Leak. Use it as
you wish. Please prefer good over evil.

[rbenv]: http://github.com/sstephenson/rbenv
