#!/bin/bash

#OMP
module load QuEST-kit/libQuEST/3.5.0/omp+fp32
cc -o bernstein_omp_32 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=1
./bernstein_omp_32
module unload QuEST-kit/libQuEST/3.5.0/omp+fp32

module load QuEST-kit/libQuEST/3.5.0/omp+fp64
cc -o bernstein_omp_64 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=2
./bernstein_omp_64
module unload QuEST-kit/libQuEST/3.5.0/omp+fp64

module load QuEST-kit/libQuEST/3.5.0/omp+fp128
cc -o bernstein_omp_128 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=4
./bernstein_omp_128
module unload QuEST-kit/libQuEST/3.5.0/omp+fp128

#OMP MPI
module load QuEST-kit/libQuEST/3.5.0/omp+mpi+fp32
cc -o bernstein_omp_mpi_32 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=1
./bernstein_omp_mpi_32
module unload QuEST-kit/libQuEST/3.5.0/omp+mpi+fp32

module load QuEST-kit/libQuEST/3.5.0/omp+mpi+fp64
cc -o bernstein_omp_mpi_64 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=2
./bernstein_omp_mpi_64
module unload QuEST-kit/libQuEST/3.5.0/omp+mpi+fp64

module load QuEST-kit/libQuEST/3.5.0/omp+mpi+fp128
cc -o bernstein_omp_mpi_128 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=4
./bernstein_omp_mpi_128
module unload QuEST-kit/libQuEST/3.5.0/omp+mpi+fp128

#ST
module load QuEST-kit/libQuEST/3.5.0/st+fp32
cc -o bernstein_st_32 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=1
./bernstein_st_32
module unload QuEST-kit/libQuEST/3.5.0/st+fp32

module load QuEST-kit/libQuEST/3.5.0/st+fp64
cc -o bernstein_st_64 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=2
./bernstein_st_64
module unload QuEST-kit/libQuEST/3.5.0/st+fp64

module load QuEST-kit/libQuEST/3.5.0/st+fp128
cc -o bernstein_st_128 bernstein_vazirani_circuit.c -lQuEST -lm  -DQuEST_PREC=4
./bernstein_st_128
module unload QuEST-kit/libQuEST/3.5.0/st+fp128
