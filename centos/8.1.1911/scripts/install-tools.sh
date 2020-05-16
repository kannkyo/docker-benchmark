#!/bin/bash

yum -y --enablerepo=extras install epel-release
yum update -y
yum install -y \
    wget gcc \
    fio \
    nuttcp 
    # netperf
rm -rf /var/cache/yum/*
yum clean all

WORK=~/.tmp

mkdir -p $WORK/stream/
wget https://www.cs.virginia.edu/stream/FTP/Code/stream.c -q -P $WORK/stream/

mkdir -p $WORK/linpack/
wget https://software.intel.com/sites/default/files/managed/cc/19/l_mklb_p_2019.6.005.tgz -q  -P $WORK/linpack/
