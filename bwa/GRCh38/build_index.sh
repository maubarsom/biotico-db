#!/bin/bash
set -euo pipefail
#Build BWA index from Human Genome Reference GRCh38 fasta
bwa index ../../fasta/GRCh38/genome.fa -p grch38
#Store date of succesful build
date >> DATE_OF_BUILD
