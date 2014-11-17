#!/bin/bash
set -euo pipefail
#Download UniProtKB/Swiss-prot from the NCBI BLAST ftp - non-redundant
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz

#Download UniProtKB/Swiss-prot from the UniProt ftp
#wget ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz

#Extract
gunzip *.gz && mv swissprot swissprot.fa

date >> DATE_OF_DOWNLOAD
