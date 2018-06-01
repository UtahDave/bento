#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Install Salt
apt-get -y install wget
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' > /etc/apt/sources.list.d/saltstack.list
apt-get -y update;
apt-get -y install salt-minion
