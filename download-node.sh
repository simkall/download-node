#!/bin/sh
# This script downloads and installs a local copy of the specified node version

version=6.6.0
folder=node-v$version-linux-x64
file=$folder.tar.gz

if [ ! -e $file ]
then
  curl -O https://nodejs.org/dist/v$version/$file
  tar -xzf $file
  mv $folder node_lib
fi
export PATH=$(pwd)/node_lib/bin:$PATH

echo Using node version $(node -v) and npm version $(npm -v)
