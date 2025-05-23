#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J pilon
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL

module load bioinfo-tools
module load Pilon

cd /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413066
java -Xmx16G -jar $PILON_HOME/pilon.jar \
  --genome /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413066/assembly.fasta \
  --frags  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413066/aligned_reads_sorted.bam \
  --output polished_sequence \
  --threads 8

cd /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413072 

java -Xmx16G -jar $PILON_HOME/pilon.jar \
  --genome /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413072/assembly.fasta \
  --frags  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413072/aligned_reads_sorted.bam \
  --output polished_sequence \
  --threads 8

cd /proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413081

java -Xmx16G -jar $PILON_HOME/pilon.jar \
  --genome /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413081/assembly.fasta \
  --frags  /proj/uppmax2025-3-3/nobackup/work/ashwath/bwa_mapping/SRR24413081/aligned_reads_sorted.bam \
  --output polished_sequence \
  --threads 8
