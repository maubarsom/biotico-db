#!/bin/bash
set -euo pipefail
#Build BWA index from Human Genome Reference GRCh38 fasta
bwa index ../../fasta/contaminants/contaminants.fa -p contaminants
#Store date of succesful build
date >> DATE_OF_BUILD
