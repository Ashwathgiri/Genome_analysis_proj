#!/bin/bash
#SBATCH -A uppmax2025-3-3
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2-00:00:00
#SBATCH -M snowy
#SBATCH -J BLAST
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-user=gashwat@gmail.com
#SBATCH --mail-type=END,FAIL


module load bioinfo-tools
module load blast

# Set paths for genome files
R7="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413072/polished_sequence.fasta"
HP126="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413066/polished_sequence.fasta"
DV3="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413081/polished_sequence.fasta"

# Copy genomes to SNIC_TMP 
cp $R7 $SNIC_TMP/R7.fasta
cp $HP126 $SNIC_TMP/HP126.fasta
cp $DV3 $SNIC_TMP/DV3.fasta

cd $SNIC_TMP

# Make BLAST databases
makeblastdb -in R7.fasta -dbtype nucl -out R7_db
makeblastdb -in HP126.fasta -dbtype nucl -out HP126_db
makeblastdb -in DV3.fasta -dbtype nucl -out DV3_db

# HP126 vs R7
blastn -query HP126.fasta -db R7_db -out HP126_vs_R7.blast -outfmt 6 -num_threads 4

# DV3 vs R7
blastn -query DV3.fasta -db R7_db -out DV3_vs_R7.blast -outfmt 6 -num_threads 4

# DV3 vs HP126
blastn -query DV3.fasta -db HP126_db -out DV3_vs_HP126.blast -outfmt 6 -num_threads 4

# Output dir

OUTDIR="/proj/uppmax2025-3-3/nobackup/work/ashwath/synterny_analysis/Blast_results"
mkdir -p $OUTDIR
cp *.blast $OUTDIR
cp *.fasta $OUTDIR
