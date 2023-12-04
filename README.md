# Dataset
Week one of the course - Bioinformatics for Biologists: Analyzing and Interpreting Genomics Datasets for the Wellcome Connecting Science

You will need to install the Windows Subsystem for Linux if you are using Windows.

The conda environment will also be used, so it will be necessary to install it.
Available at: https://conda.io/projects/conda/en/latest/index.html

After downloading you can run the install with this command.

'''
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
conda list or conda init
'''
Creating the conda environment and installing the necessary tools
'''
conda env create -n MOOC --file MOOC.yml
conda activate MOOC
'''

The first step is to download the sequence data, the course uses this repository in this step https://github.com/CDCgov/datasets-sars-cov-2

Sample download script:

```markdown
# Genomic Sample Download Script

This script is designed to download genomic samples from the CDC's GitHub repository. It utilizes the `fastq-dump` tool to process a specific file (`ERR5743893`) from the European Nucleotide Archive (ENA).

## Prerequisites

Before running the script, make sure you have the following software tools installed:

- [fastq-dump](https://rnnh.github.io/bioinfo-notebook/docs/fastq-dump.html)

Ensure the tool is in your PATH or provide its full path in the script.

## Usage

```bash
./download_samples.sh
```

This script changes the working directory, downloads the specified genomic sample using `fastq-dump`, and stores the resulting files in the appropriate location.

## Additional Information

- Repository with samples: [CDCgov/datasets-sars-cov-2](https://github.com/CDCgov/datasets-sars-cov-2)
- Samples source: European Nucleotide Archive (ENA)
- Learn more about `fastq-dump`: [Documentation](https://rnnh.github.io/bioinfo-notebook/docs/fastq-dump.html)

markdown
Copy code
# Genomic Quality Check and MultiQC Script

This script is designed to perform a quality check on genomic samples using FastQC and generate a MultiQC report for aggregated results.

## Prerequisites

Before running the script, make sure you have the following software tools installed:

- [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [MultiQC](https://multiqc.info/)

Ensure these tools are in your PATH or provide their full paths in the script.

## Usage

```bash
./quality_check_and_multiqc.sh
This script creates a directory for analysis results, conducts a quality check on specified FASTQ files using FastQC, and generates a MultiQC report for aggregated results.

Additional Information
Quality check tool: FastQC
MultiQC documentation: MultiQC
Directory Structure
Results/: Directory containing analysis results.
QC_Reports/: Quality check reports.

markdown
Copy code
# Genomic Mapping Script

This script performs genomic mapping using the BWA-MEM algorithm and processes the resulting SAM file using `samtools` for further analysis.

## Prerequisites

Before running the script, make sure you have the following software tools installed:

- [BWA](https://bio-bwa.sourceforge.net/bwa.shtml)
- [samtools](https://www.htslib.org/)

Ensure these tools are in your PATH or provide their full paths in the script.

## Usage

```bash
./genomic_mapping.sh
This script creates directories for analysis results, indexes the reference genome, maps genomic sequences to the reference using bwa mem, and processes the resulting SAM file using samtools.

Additional Information
BWA-MEM documentation: BWA
samtools documentation: samtools
Directory Structure
Results/: Directory containing analysis results.
Mapping/: Genomic mapping results.
Steps
Indexing Reference Genome:

The script uses bwa index to index the reference genome (MN908947.fasta).
Mapping Sequences:

Genomic sequences (ERR5743893_1.fastq and ERR5743893_2.fastq) are mapped to the reference genome using bwa mem.
Processing SAM File:

The resulting SAM file is processed using samtools to generate a binary BAM file, which is then sorted based on the order they were mapped.
Indexing BAM File:

Finally, the BAM file is indexed to speed access to specific genomic regions and read data.

markdown
Copy code
# Variant Calling and VCF Processing Script

This script performs variant calling using FreeBayes on a sorted BAM file and then compresses and indexes the resulting VCF file using `bgzip` and `tabix`.

## Prerequisites

Before running the script, make sure you have the following software tools installed:

- [samtools](https://www.htslib.org/)
- [FreeBayes](https://github.com/freebayes/freebayes)

Ensure these tools are in your PATH or provide their full paths in the script.

## Usage

```bash
./variant_calling_and_vcf_processing.sh
This script indexes the reference genome using samtools faidx, performs variant calling using FreeBayes on a sorted BAM file, and then compresses and indexes the resulting VCF file.

Additional Information
FreeBayes documentation: FreeBayes
Directory Structure
Results/: Directory containing analysis results.
Variant_calling/: Variant calling results.
Steps
Indexing Reference Genome:

The script uses samtools faidx to index the reference genome (MN908947.fasta).
Variant Calling:

FreeBayes is used to identify variants from the sorted BAM file (Results/Mapping/ERR5743893.sorted.bam).
Processing VCF File:

The resulting VCF file is compressed using bgzip and then indexed using tabix for faster access.
Notes
Adjust paths in the script based on your file locations.
Customize the script for different samples or datasets as needed.
Ensure you have the necessary permissions to execute the script.
Reach out if you have any questions or encounter issues.
vbnet
Copy code

Replace the placeholder script name and descriptions with the actual names and details of your script. Customize the information based on your specific use case and environment. This README template provides a brief overview of the script's purpose, prerequisites, usage, and additional information.
