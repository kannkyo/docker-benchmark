#!/bin/bash

num_threads=$1

echo execute stream with num_threads=$num_threads

if [ "$num_threads" = "1" ]; then
    gcc -O stream.c -o stream.o
else
    export OMP_NUM_THREADS=$num_threads
    gcc -fopenmp -D_OPENMP stream.c -o stream.o
fi

./stream.o
