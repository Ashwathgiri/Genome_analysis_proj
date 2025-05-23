#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -M snowy
#SBATCH -J 1
#SBATCH -o %j.out
#SBATCH -e  %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load Flye

flye --nano-raw /proj/uppmax2025-3-3/Genome_Analysis/2_Beganovic_2023/DNA_reads/SRR24413066.fastq.gz \
     --out-dir /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/SRR24413066 \
     --genome-size 9.6m \
     --threads 2
