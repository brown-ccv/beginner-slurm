#!/bin/bash

#SBATCH --time=1:00:00
#SBATCH -c 1
#SBATCH -J first
#SBATCH -o first-%j.out
#SBATCH -e first-%j.err

echo "hello $USER. Congratulations on running your first batch script"

