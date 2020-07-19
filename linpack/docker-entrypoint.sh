#!/bin/bash
set -e

MKL_DYNAMIC=false
OMP_NUM_THREADS=4

(
  cd l_mklb_p_*/benchmarks_*/linux/mkl/benchmarks/linpack
  ./runme_xeon64
)
