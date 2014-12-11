#!/bin/bash
set -euo pipefail

#Download nucleotide fasta from RefSeq Viral database
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/nr.gz
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/nr.gz.md5

md5sum -c nr.gz.md5 >> MD5_CHECK
gunzip *.gz
mv nr nr.fa

date >> DATE_OF_DOWNLOAD
