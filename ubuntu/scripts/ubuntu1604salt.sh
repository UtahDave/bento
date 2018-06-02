#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Install Salt
apt-get -y install wget
apt-get -y install software-properties-common python-software-properties
add-apt-repository ppa:jonathonf/python-3.6 -y

wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' > /etc/apt/sources.list.d/saltstack.list
apt-get -y update;
apt-get -y install salt-minion
apt-get -y install python3.6

curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6

# Install needed Python 3.6 modules
pip3.6 install msgpack
pip3.6 install pyyaml
