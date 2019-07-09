#!/usr/bin/env bash

sudo apt-get install -y python-webob python-greenlet python-routes

git clone https://github.com/mininet/mininet
pushd mininet
git checkout -b 2.2.2 2.2.2  # or whatever version you wish to install
./util/install.sh -fn03
popd
