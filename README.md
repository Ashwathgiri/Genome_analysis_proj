# Genome_analysis_proj
Project_plan 
**Goal**
The goal of this project is to re-analyze the genomic and transcriptomic data from Streptomyces rimosus strains (wild-type R7 and hyperproducer HP126) as presented in Beganovic et al. (2023). The study explores the genetic and metabolic mechanisms behind oxytetracycline hyperproduction.
Aim & Research Questions
●	Replicate the multiomics analysis of S. rimosus HP126 to validate:
●	Genetic mutations and rearrangements driving oxytetracycline hyperproduction.
●	Transcriptional/metabolic changes in precursor pathways (acetyl-CoA/malonyl-CoA).
●	Heterologous bhimamycin production in engineered strains.
**Key Questions**:
1)	How do genomic rearrangements in HP126 enhance oxytetracycline biosynthesis?
2)	Which metabolic pathways are rewired to boost precursor supply?
Type of Sample
Strains:
Wild-type S. rimosus ATCC 10970.
Mutagenized hyperproducer HP126.
Engineered HP126 Δv3 (oxytetracycline cluster deletion).
Data description 
Strains	Data Type	Sequencing used
S. rimosus ATCC 10970 (wild type)	Whole Genome	Nanopore and Illumina
S. rimosus HP126 (mutant)	Whole Genome	Nanopore and Illumina
Both strains at 24h growth	RNA-seq	Illumina

**Basic analysis and workflow:**
1.	Raw data quality control
a)	Assessing the quality of the sequences (Illumina or nanopore)
b)	This gives us a pre-base quality score
c)	Gives the read length distribution which is critical for nanopore 
d)	Tools like FastQC, MultiQC, NanoPlot are used
2.	Genome Assembly & Evaluation
a)	Assemble Nanopore long reads of S. rimosus HP126 using Flye or Canu.
b)	Polish the assembly with Illumina short reads using Pilon.
c)	Evaluate assembly quality with QUAST and BUSCO.

3.	Comparative genomics (Gene Annotations)
a)	Annotate genomes with Prokka and compare gene content.
b)	Identify structural variations (deletions, duplications) between wild type R7 and HP126 using MUMmer
c)	Compare missing enzymes in the pathways 

4.	RNA–Sequencing 
a)	Trim raw RNA-seq reads with Trimmomatic
b)	Map reads to the assembled genome using HISAT2
c)	Quantify gene expression with featureCounts(can use PROKA) and perform differential expression analysis with DESeq2.

5.	Synterny analysis & visualization 
a)	Compare gene order and orientation between R7 and HP126 using ACT
**Project workflow diagram**
![Diagram-2025-04-01-190423](https://github.com/user-attachments/assets/afd97b51-54b1-4417-9fa5-e36518729529)

Time schedule for work plan 




