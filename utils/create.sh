#!/bin/bash

src=/usr/local/rvm
dest=./rvm

rm -rf rvm

for file in $(cat files); do
    srcfile="$src/$file";
    destfile="$dest/$file";
    srcdir=$(dirname $srcfile);
    destdir=$(dirname $destfile);
    mkdir -p $destdir
    cp -a $srcfile $destfile;
    ls -al $destfile;
done
