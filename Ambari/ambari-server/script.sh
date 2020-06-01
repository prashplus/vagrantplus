#!/bin/bash
sudo su
wget -O /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/ubuntu18/2.x/updates/2.7.4.0/ambari.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD
apt-get update
apt-get install -y ambari-server
apt-get install -y ntp
update-rc.d ntp defaults
systemctl stop systemd-resolved
sh -c "echo 'DNS=1.1.1.1' >> /etc/systemd/resolved.conf"
sh -c "echo 'DNSStubListener=no' >> /etc/systemd/resolved.conf"
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
apt install -y openjdk-8-jre-headless
ambari-server setup -s
ambari-server start
ifconfig