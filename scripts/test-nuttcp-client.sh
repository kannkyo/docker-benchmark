#!/bin/bash

IP_ADDR=$1

nuttcp -t -i1 $IP_ADDR > nuttcp-tcp-c2s.log
nuttcp -t -r -i1 $IP_ADDR > nuttcp-tcp-s2c.log
nuttcp -u -t -i1 $IP_ADDR > nuttcp-udp-c2s.log
nuttcp -u -r -t -i1 $IP_ADDR > nuttcp-udp-s2c.log
