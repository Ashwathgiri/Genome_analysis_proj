#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 24:00:00
#SBATCH -M snowy
#SBATCH -J 10
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load NanoPlot

NanoPlot --fastq /proj/uppmax2025-3-3/Genome_Analysis/2_Beganovic_2023/DNA_reads/SRR24413066.fastq.gz  -o /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/nanoplot/SRR24413066

NanoPlot --fastq /proj/uppmax2025-3-3/Genome_Analysis/2_Beganovic_2023/DNA_reads/SRR24413072.fastq.gz  -o /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/nanoplot/SRR24413072

NanoPlot --fastq /proj/uppmax2025-3-3/Genome_Analysis/2_Beganovic_2023/DNA_reads/SRR24413081.fastq.gz  -o /home/asgi0640/Genome_analysis_proj/analyses/01_preprocessing/nanoplot/SRR24413081

