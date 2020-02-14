#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=1:00:00
#SBATCH --mem=4GB
#SBATCH --job-name=HW1
#SBATCH --output=HW1_%j.out

module load fastqc/0.11.8
fastqc cdg21c1_R1.fastq

