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
