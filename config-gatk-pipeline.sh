#!/bin/bash

singularity pull --arch amd64 library://goita/collection/gatk.sif:latest

singularity build --remote gatk.sif-latest.sh gatk.def

chmod u+x ./gatk-pipeline.lsf
