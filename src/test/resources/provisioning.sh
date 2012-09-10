#!/bin/bash

apt-get update
apt-get upgrade

apt-get -y --force-yes install openjdk-7-jdk

dpkg -i /transfer/glassfish3-3.1.2.2.deb
service glassfish3 create-domain
service glassfish3 start
