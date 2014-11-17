#!/bin/bash
set -euo pipefail
#Create stampy index for human reference GRCh38
stampy.py -t 8 --species=human --assembly=grch38 -G grch38 ../../fasta/GRCh38/genome.fa
#Create stampy hash for human reference GRCh38
stampy.py -g grch38 -H grch38

#Token of success
date >> DATE_OF_BUILD
