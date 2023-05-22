# Joint-Call

This package is used to joint call all the Genotype data for cancer patients for a family of your choice in order to find all the variants responsible for cancer. It is intended to work on a HPCC cluster that runs singularity and slurm so make sure that singularity is installed. 

Make sure that you have all the bam and bai files for your cancer patients or this script will not run. You will also need a reference file with the extension .fasta as well
as .fasta.fai and .dict. It is recommended that you use the Homo_sapiens_assembly19.fasta, Homo_sapiens_assembly19.fasta.fai and Homo_sapiens_assembly19.dict reference files. If you are missing the bai files then you can use samtools to retrieve them from your bam files. It is recommended that you use the singularity package os samtools for this purpose.

# Configuation:

IMPORTANT: First specify your email address within variant.lsf within the field "your-email-address" or the pipeline will fail.

In order to configure the pipeline run the following commands below:

chmod u+x ./config-gatk-pipeline.sh

config-gatk-pipeline.sh

# Run the Entire pipeline:

Afterwards run the entire pipeline in the folder for which you have genotype data for the cancer patients within your HPCC Cluster with the following command below:

chmod u+x variant-call.sh

./variant-call.sh

You will find all the Genotype data responsible for cancer after the HPCC has finished running the program.
