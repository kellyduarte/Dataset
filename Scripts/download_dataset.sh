#!/usr/bin/

##Script to download samples

#Repository in which samples are available
#https://github.com/CDCgov/datasets-sars-cov-2

#Samples from the European Nucleotide Archive (ENA))

#To learn more about fastq-dump https://rnnh.github.io/bioinfo-notebook/docs/fastq-dump.html
cd ..
fastq-dump --split-files ERR5743893


