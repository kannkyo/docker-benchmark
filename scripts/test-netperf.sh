#!/bin/bash

IP_ADDR=$1

netperf -t TCP_RR -H $IP_ADDR -- -r 100,200 -k MIN_LATENCY,MAX_LATENCY,P50_LATENCY,P90_LATENCY,P99_LATENCY,MEAN_LATENCY,STDDEV_LATENCY > netperf-tcp.log
netperf -t UDP_RR -H $IP_ADDR -- -r 100,200 -k MIN_LATENCY,MAX_LATENCY,P50_LATENCY,P90_LATENCY,P99_LATENCY,MEAN_LATENCY,STDDEV_LATENCY > netperf-udp.log
