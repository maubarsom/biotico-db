#!/bin/bash
set -euo pipefail

#Download nucleotide fasta from RefSeq Viral database
wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/viral/viral.1.1.genomic.fna.gz
#Download protein fasta from RefSeq Viral database
wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/viral/viral.1.protein.faa.gz
#Download non-redundant protein fasta from RefSeq Viral database
#wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/viral/viral.nonredundant_protein.1.protein.faa.gz
#Extract downloaded fasta files
gunzip *.gz

date >> DATE_OF_DOWNLOAD
