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
module load MUMmer
module load Amber/20
module load ghostscript 

# Set input files
R7="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413072/polished_sequence.fasta"
HP126="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413066/polished_sequence.fasta"
DV3="/proj/uppmax2025-3-3/nobackup/work/ashwath/assembly/polished_assembly/SRR24413081/polished_sequence.fasta"

# set output directory
OUTDIR="/proj/uppmax2025-3-3/nobackup/work/ashwath/synterny_analysis/MuMmer"
mkdir -p $OUTDIR

# Reusable function
run_mummerplot () {
    REF=$1
    QRY=$2
    PREFIX=$3

    echo "Running MUMmer for: $PREFIX"

    nucmer --prefix=$OUTDIR/$PREFIX $REF $QRY
    delta-filter -1 $OUTDIR/${PREFIX}.delta > $OUTDIR/${PREFIX}.filter
    mummerplot --fat --filter --postscript -p $OUTDIR/${PREFIX}_plot $OUTDIR/${PREFIX}.filter

    ps2pdf $OUTDIR/${PREFIX}_plot.ps $OUTDIR/${PREFIX}_plot.pdf

    echo "Finished: $PREFIX"
}

# Run comparisons

run_mummerplot $HP126 $R7 "R7_vs_HP126"
run_mummerplot $DV3 $R7 "R7_vs_DV3"
run_mummerplot $DV3 $HP126 "HP126_vs_DV3"

echo "All comparisons done!"
