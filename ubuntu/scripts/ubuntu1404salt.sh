#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Install Salt
apt-get -y install wget
wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main' > /etc/apt/sources.list.d/saltstack.list

apt-get -y install software-properties-common
add-apt-repository ppa:fkrull/deadsnakes -y

apt-get -y update;
apt-get -y install salt-minion
apt-get -y install python3.6

