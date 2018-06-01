#!/bin/sh -eux

yum -y install https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el6.noarch.rpm
yum clean expire-cache
yum install salt-minion -y

yum -y install https://centos6.iuscommunity.org/ius-release.rpm
yum -y install python36u
yum -y install python36u-pip
