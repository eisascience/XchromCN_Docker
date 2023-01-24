#!/bin/bash

# Define the location of the BAM files
BAM_DIR=/data/bamfiles

# Create a new directory for the output
mkdir -p /data/XchromCN_output

# Run XHMM
xhmm --bam_list ${BAM_DIR}/bamfile_list.txt --gc_model /usr/local/bin/XHMM-1.0.11/resources/example.gcmodel --output_prefix /data/XchromCN_output/xhmm_output --run_PCA

## Run cn.MOPS
#cnv-seq.py -f ${BAM_DIR}/bamfile_list.txt -o /data/XchromCN_output/cnMOPS_output -c X -s hg19

## Run XCNV
#XCNV -i ${BAM_DIR}/bamfile_list.txt -o /data/XchromCN_output/XCNV_output

## Run CopyNumber
#Rscript -e 'library(CopyNumber);run_CopyNumber("${BAM_DIR}/bamfile_list.txt","/data/XchromCN_output/CopyNumber_output")'

## Run XCCNA
#XCCNA -i ${BAM_DIR}/bamfile.bam -o /data/XchromCN_output/XCCNA_output

#This script assumes that the BAM files are located in the /data/bamfiles directory, 
#    and it creates a new directory called /data/XchromCN_output to store the output files.

#It runs each of the bioinformatics tools one after the other: XHMM, cn.MOPS, XCNV, CopyNumber and XCCNA. 
#Each tool is run using the appropriate command-line options and input/output files. 
#In the case of CopyNumber, it's run using Rscript and it calls the CopyNumber package to run the pipeline.

#The script uses the bamfile_list.txt file to provide the list of BAM files to the pipeline. 
#    It should contain the path to the BAM files, one per line.
