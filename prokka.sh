#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J PROKKA
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load prokka


prokka --outdir /proj/uppmax2025-3-3/nobackup/work/ashwath/annotation/SRR24413066 \
       --prefix SRR24413066_annotated \
       --cpus 2 \
       /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413066/polished_sequence.fasta 

prokka --outdir /proj/uppmax2025-3-3/nobackup/work/ashwath/annotation/SRR24413072 \
       --prefix SRR24413072_annotated \
       --cpus 2 \
       /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413072/polished_sequence.fasta 

prokka --outdir /proj/uppmax2025-3-3/nobackup/work/ashwath/annotation/SRR24413081 \
       --prefix SRR24413066_annotated \
       --cpus 2 \
       /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413081/polished_sequence.fasta 
