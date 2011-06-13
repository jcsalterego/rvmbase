rvmbase
=======

Pre-built binaries for RVM geared towards Ubuntu 10.10.

Requirements
============

 * OS: Ubuntu 10.10 Maverick Meerkat - amd64
 * rvm -- root install
 * git (for bootstrap.sh)

Bootstrap
=========

There are many ways to bootstrap rvmbase, depending on your current levels of paranoia and laziness:

Run as root -- about as safe as rvm's installation process:

    $ curl -L bit.ly/rvmbase | bash

For more visibility, to see the commands as they are executed:

    $ curl -L bit.ly/rvmbase | bash -x

Long-form lazy bootstrap:

    $ curl -L https://raw.github.com/jcsalterego/rvmbase/master/bootstrap.sh > bootstrap.sh
    $ less bootstrap.sh

    # ok? ok.
    $ bash bootstrap.sh

Longest form -- if you like typing:

    $ git clone https://github.com/jcsalterego/rvmbase.git
    $ bash rvmbase/bootstrap.sh

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
