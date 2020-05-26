#!/bin/bash
sudo su
wget -O /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/ubuntu18/2.x/updates/2.7.4.0/ambari.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD
apt-get update
apt-get install -y ambari-server
apt-get install -y ntp
update-rc.d ntp defaults

#ambari-server setup
#service ambari-server start