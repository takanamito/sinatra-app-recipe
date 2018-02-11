#!/bin/sh

set -ex

git submodule init && git submodule update --depth 1

if [ ! -e ./bin/mitamae ]; then
  wget -O ./bin/mitamae.tar.gz https://github.com/itamae-kitchen/mitamae/releases/download/v1.5.2/mitamae-x86_64-linux.tar.gz
  tar xvzf bin/mitamae.tar.gz
  mv ./mitamae-x86_64-linux bin/mitamae
  chmod +x bin/mitamae
fi

./bin/mitamae local bootstrap.rb -y node.yml
