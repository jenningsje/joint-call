# joint-call

This package is used to joint call all files with gatk in order to identify variants responsible for cancer. It is intended to work on a HPCC cluster that runs singularity and slurm so make sure that singularity is installed. 

Make sure that you have all the bam and bai files for your cancer patients or this script will not run. You will also need a reference file with the extension .fasta as well
as .fasta.fai. It is recommended that you use the Homo_sapiens_assembly19.fasta and Homo_sapiens_assembly19.fasta.fai reference files. If you are missing the bai
files then you can use samtools to retrieve them from your bam files. It is recommended that you use the singularity package os samtools for this purpose.

Configuation:

In order to configure the pipeline run the following commands below:

chmod u+x c./onfig-gatk-pipeline.sh

config-gatk-pipeline.sh

Afterwards run the entire pipeline in the folder for which you have genotype data for the cancer patients within your HPCC Cluster.
