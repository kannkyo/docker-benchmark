#!/bin/bash

WORK=~/.tmp/stream/
if [ ! -d $WORK ]; then
    mkdir -p $WORK
fi

if [ ! -e $WORK/stream.c ]; then
    wget https://www.cs.virginia.edu/stream/FTP/Code/stream.c -P $WORK
fi

usage() {
    echo "Usage: $0 [-n NUM_THREADS]" 1>&2
    exit 1
}

while getopts n:h OPT
do
  case $OPT in
     n) NUM_THREADS="$OPTARG";;
     h) usage;;
     *) echo "INVALID OPTION ERROR（OPTION=$OPT)";;
  esac
done

if [ "$NUM_THREADS" = "1" ]; then
    gcc -O $WORK/stream.c -o $WORK/stream
    $WORK/stream
else
    export OMP_NUM_THREADS=$NUM_THREADS
    gcc -fopenmp -D_OPENMP $WORK/stream.c -o $WORK/stream
    $WORK/stream
fi
