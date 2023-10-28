#!/usr/bin/

#Creating directory for analysis results
cd ..
mkdir -p Results/QC_Reports 

#Quality check using FastQC https://www.bioinformatics.babraham.ac.uk/projects/fastqc/
fastqc ERR5743893_1.fastq ERR5743893_2.fastq --outdir Results/QC_Reports 

#To perform multiqc https://multiqc.info/
multiqc . 