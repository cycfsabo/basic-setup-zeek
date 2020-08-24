#!/bin/bash

#RPM/RedHat-based Linux:
#sudo yum install cmake make gcc gcc-c++ flex bison libpcap-devel openssl-devel python-devel swig zlib-devel

#DEB/Debian-based Linux:
sudo apt-get install -y cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev


#FreeBSD:
#sudo pkg install bash cmake swig30 bison python py27-sqlite3 py27-ipaddress

git clone --recursive https://github.com/zeek/zeek
cd zeek/
./configure
make
make install
