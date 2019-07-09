#!/usr/bin/env bash

cd ~

#  Dependencies for ryu
sudo apt-get install -y python-routes python-dev
sudo pip install oslo.config --upgrade
sudo pip install msgpack-python
sudo pip install eventlet
sudo pip install ovs
sudo pip install tinyrpc
sudo pip install msgpack



#  Ryu install
cd ~
git clone https://github.com/osrg/ryu.git
sudo cp /vagrant/setup/ryu-flags.py ~/ryu/ryu/flags.py
cd ryu
sudo python ./setup.py install
