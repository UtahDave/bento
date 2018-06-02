#!/bin/sh -eux

yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm -y
yum clean expire-cache
yum install salt-minion -y

yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install python36u
yum -y install python36u-pip

# Install needed Python 3.6 modules
pip3.6 install msgpack
pip3.6 install pyyaml

