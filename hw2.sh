#!/bin/bash
#
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=1:00:00
#SBATCH --mem=4GB
#SBATCH --job-name=MYJOB
#SBATCH --output=slurm_%j.out
module load histat1/intel/2.0.5
histat-build ./*.fa Arabidopsis_index
for read in ./*_1.fastq
do
histat mem -p 8 -x Arabidopsis_index -1 $read -2 ${read::-7}2.fastq -S ${read::-7}Arabidopsi_HiSTAT.sam
done



 
