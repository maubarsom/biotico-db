#!/bin/bash
set -euo pipefail
#Build BWA index from Human Genome Reference GRCh38 fasta
diamond makedb --in ../../fasta/nr/nr.fa --db nr
#Store date of succesful build
date >> DATE_OF_BUILD
