#!/usr/bin/
cd ..

#Indexing the reference genome using samtools
samtools faidx MN908947.fasta

cd Results/
mkdir Variant_calling
cd ..

#FreeBayes to identify the variants https://github.com/freebayes/freebayes
freebayes -f MN908947.fasta Results/Mapping/ERR5743893.sorted.bam  > Results/Variant_calling/ERR5743893.vcf

#Compressing and index the VCF file
bgzip Results/Variant_calling/ERR5743893.vcf
tabix Results/Variant_calling/ERR5743893.vcf.gz
