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