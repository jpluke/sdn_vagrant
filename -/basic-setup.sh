#!/usr/bin/env bash

# install packages
sudo apt-get update

sudo apt-get install -y build-essential fakeroot debhelper autoconf \
automake libssl-dev graphviz python-all python-qt4 \
python-twisted-conch libtool git tmux vim python-pip python-paramiko \
python-sphinx uuid-runtime linux-headers-`uname -r` dkms net-tools

sudo apt-get install -y debconf-utils
sudo echo  "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo apt-get install -y wireshark-common
sudo apt-get install -y wireshark
sudo addgroup vagrant wireshark


sudo pip install alabaster
sudo apt-get install -y ssh git emacs sshfs

# set up some shortcuts
mkdir ~/bin/
echo "sudo mn -c; sudo mn --topo single,3 --mac --switch ovsk --controller remote" > ~/bin/mininet.sh
chmod 755 ~/bin/mininet.sh

sudo mkdir -p /etc/profile.d
sudo cp /vagrant/setup/xauth.sh /etc/profile.d/xauth.sh
