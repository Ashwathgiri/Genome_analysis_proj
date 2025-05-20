#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J bwa_mapping
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load subread

featureCounts -T 2 -p \
  -a /proj/uppmax2025-3-3/nobackup/work/ashwath/annotation/SRR24413072/SRR24413072_annotated.gff \
  -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/featurecounts_matrix.txt \
  -g ID -t CDS \
  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/*alligned_sort.bam
