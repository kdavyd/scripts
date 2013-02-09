#!/usr/bin/bash

#
# This script will download, install and configure Haskell on NexentaStor or NexentaOS
# and automatically fetch all dependencies from the repos.
#

mkdir /var/tmp/haskell
cd /var/tmp/haskell
apt-get update
apt-get install gcc libgmp*
wget http://www.haskell.org/ghc/dist/6.6/ghc-6.6-i386-unknown-solaris2.tar.bz2
ghc-6.6-i386-unknown-solaris2.tar.bz2
cd ghc-6.6
./configure
make install
rm -rf /var/tmp/haskell
ghc -V
echo "Done."
