#!/bin/bash


WORK=~/.tmp/linpack/
if [ ! -d $WORK ]; then
    mkdir -p $WORK
fi

if [ ! -d $WORK/l_mklb_p_2019.6.005 ]; then
    wget -qO- https://software.intel.com/sites/default/files/managed/cc/19/l_mklb_p_2019.6.005.tgz | tar -xz -C $WORK
fi

MKL_DYNAMIC=false
OMP_NUM_THREADS=4

(
  cd $WORK/l_mklb_p_*/benchmarks_*/linux/mkl/benchmarks/linpack
  ./runme_xeon64
)