#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J QUAST
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load quast

quast.py \
  /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413066/polished_sequence.fasta \
  -o /proj/uppmax2025-3-3/nobackup/work/ashwath/assessment/SRR24413066 \
  --threads 2

quast.py \
  /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413072/polished_sequence.fasta \
  -o /proj/uppmax2025-3-3/nobackup/work/ashwath/assessment/SRR24413072 \
  --threads 2

quast.py \
  /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413081/polished_sequence.fasta \
  -o /proj/uppmax2025-3-3/nobackup/work/ashwath/assessment/SRR24413081 \
  --threads 2


