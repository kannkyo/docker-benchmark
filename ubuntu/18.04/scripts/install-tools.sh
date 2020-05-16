#!/bin/bash

apt-get update -y
apt-get install -y \
    wget gcc \
    fio \
    nuttcp iproute2 iputils-ping netperf
apt-get clean
rm -rf /var/lib/apt/lists/*

WORK=~/.tmp

mkdir -p $WORK/stream/
wget https://www.cs.virginia.edu/stream/FTP/Code/stream.c -q -P $WORK/stream/

mkdir -p $WORK/linpack/
wget https://software.intel.com/sites/default/files/managed/cc/19/l_mklb_p_2019.6.005.tgz -q  -P $WORK/linpack/
