rvmbase
=======

Pre-built binaries for RVM geared towards Ubuntu 10.10.

Requirements
============

 * OS: Ubuntu 10.10 Maverick Meerkat - amd64
 * rvm root install

Bootstrap
=========

As root -- about as safe as rvm's installation process:

    $ curl -L bit.ly/rvmbase | bash

For more visibility:

    $ curl -L bit.ly/rvmbase > bootstrap.sh
    $ less bootstrap.sh
    $ bash bootstraps.h

Usage
=====

Once installed, everything will reside in `/usr/local/rvmbase`. To run, use `install.sh`:

    $ /usr/local/rvmbase/install.sh 1.9.2
    $ /usr/local/rvmbase/install.sh ree-1.8.6

Uninstall
=========

N.B.: don't mistype/mistab this one:

    $ rm -rf /usr/local/rvmbase

Motivation
==========

Compiling rubies are no fun. Debian packages were too difficult for me, and often expect source code, not binaries.
