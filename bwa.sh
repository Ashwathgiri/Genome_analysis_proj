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
module load bwa

bwa index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413066/assembly.fasta

bwa mem  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413066/assembly.fasta /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413065_R1_paired.fq.gz /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413065_R2_paired.fq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413066/aligned_reads.sam

bwa index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413072/assembly.fasta

bwa mem  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413072/assembly.fasta /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413071_R1_paired.fq.gz /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413071_R2_paired.fq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413072/aligned_reads.sam

bwa index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413081/assembly.fasta

bwa mem  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413081/assembly.fasta /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413080_R1_paired.fq.gz /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/processed_reads/SRR24413080_R2_paired.fq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413081/aligned_reads.sam
