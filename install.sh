#!/bin/bash

set -e;

usage ()
{
    echo "Usage: $0 <ruby_version>"
    echo "  Valid ruby_versions: 1.9.2"
}

if [ -z "$1" ]; then
    usage;
    exit 1;
fi

version=""
case "$1" in
    "ruby-1.9.2-p180")
	version="ruby-1.9.2-p180";
	;;
    "1.9.2-p180")
	version="ruby-1.9.2-p180";
	;;
    "1.9.2")
	version="ruby-1.9.2-p180";
	;;
    *)
	;;
esac

if [ -z "$version" ]; then
    "Version $1 not recognized. Aborting.";
    exit 1;
fi

destdir=/usr/local/rvm
sentinel=/etc/profile.d/rvm.sh
installs=$destdir/config/installs
tmp="/tmp/rvm.$$";
rvmgroup=rvm

basedir=$(dirname $0)
if [ "$basedir" == "." ]; then
    basedir=`pwd`
fi

srcdir="$basedir/rubies/$version/rvm";

if [ ! -f "$sentinel" ]; then
    echo "RVM needs to be installed as root (looking for $sentinel).";
    exit 1;
fi

if [ -n "$(grep $version /usr/local/rvm/config/installs)" ]; then
    echo "$version already exists. Exiting.";
    exit 0;
fi

# make we're chowned correctly
chown -R :rvm "$srcdir";
rsync -av "$srcdir/" "$destdir/"

if [ -z "$(grep $version $installs)" ]; then
    # add version to config/installs
    echo "$version" >> $installs;
fi
