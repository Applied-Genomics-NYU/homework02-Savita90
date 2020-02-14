#!/bin/bash
#
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=1:00:00
#SBATCH --mem=4GB
#SBATCH --job-name=MYJOB
#SBATCH --output=slurm_%j.out
module load samtools/intel/0.1.19
for sam in ./*_Arabidopsi_HiSTAT.sam
do
samtools view -bS $sam > ${sam::-10}Arabidopsis.bam
done


