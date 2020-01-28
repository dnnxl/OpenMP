#!/bin/sh
#SBATCH --job-name=hello_world
#SBATCH --output=hello_world.o%j
#SBATCH --partition=nu-hpc
#SBATCH --nodes=1
#SBATCH --time=0:01:00


cd $SLURM_SUBMIT_DIR



export OMP_NUM_THREADS=8
./hello_world
