#!/bin/bash

#SBATCH --time=00:10:00
#SBATCH -c 1

# Run a command
echo "Hello"
sleep 5m
echo "Finished"

