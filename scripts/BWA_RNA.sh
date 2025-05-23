#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J bwa_mapping_RNA
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load bwa



bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516459_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516459_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned.sam

bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516460_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516460_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned.sam

bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516461_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516461_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned.sam

bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516462_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516462_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned.sam

bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516463_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516463_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned.sam

bwa mem /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/assembly.fasta /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516464_1.fastq.gz /home/asgi0640/Genome_analysis_proj/2_Beganovic_2023/RNA_reads/SRR24516464_2.fastq.gz > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned.sam


samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516459_alligned_sort.bam

samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516460_alligned_sort.bam

samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516461_alligned_sort.bam

samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516462_alligned_sort.bam

samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516463_alligned_sort.bam

samtools view -S -b /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned.sam > /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned.bam

samtools sort /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned.bam -o /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned_sort.bam

samtools index /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/RNA/SRR24516464_alligned_sort.bam