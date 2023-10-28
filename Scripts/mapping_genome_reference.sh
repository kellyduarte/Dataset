#!/usr/bin/

cd ..
mkdir -p Results
cd Results/
mkdir -p Mapping
cd ..

#The aligned bwa-men will be used https://bio-bwa.sourceforge.net/bwa.shtml
#Indexing the reference genome
bwa index MN908947.fasta 

#Mapping the sequences to the reference genome
#MN908947.fasta is our genome reference
#ERR5743893_1.fastq is the sample forward  
#ERR5743893_2.fastq is the sample reverse
bwa mem MN908947.fasta ERR5743893_1.fastq ERR5743893_2.fastq > Results/Mapping/ERR5743893.sam

#Change of directory
cd Results/Mapping
ls -lhrt

#We are using the samtools for transform data into binary files and reduce analysis space
#https://www.htslib.org/

cd ../../
samtools view -@ 20 -S -b Results/Mapping/ERR5743893.sam > Results/Mapping/ERR5743893.bam

#Sorting based on the order they were mapped
samtools sort -@ 32 -o Results/Mapping/ERR5743893.sorted.bam Results/Mapping/ERR5743893.bam
#Indexing BAM files to speed access to specific genomic regions and read data
samtools index Results/Mapping/ERR5743893.sorted.bam

