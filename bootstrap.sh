#!/bin/bash
#
# Run this via:
#
#   curl -L bit.ly/rvmbase | bash
#
# Or expanded:
#
#   bash < <(curl -s https://raw.github.com/jcsalterego/rvmbase/master/bootstrap.sh)
#
# Or y'know... don't.
#

destdir=/usr/local/rvmbase
tmpdir=/tmp/rvmbase.$$/

[ -z "$(which git)" ] && echo "Requires git." && exit 1;
[ -d "$destdir" ] && echo "$destdir already exists. Aborting." && exit 1;

mkdir -p "$tmpdir"
cd "$tmpdir";
git clone https://github.com/jcsalterego/rvmbase.git;
mkdir -p /opt
cp -r $tmpdir/rvmbase $destdir
cd $destdir;
rm -rf $tmpdir;

echo "Ready. Install with:"
echo "  $ /usr/local/rvmbase/install.sh 1.9.2"
