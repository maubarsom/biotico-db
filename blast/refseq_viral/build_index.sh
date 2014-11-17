#!/bin/bash
set -euo pipefail

#Create blast nucleotide database from Refseq viral genomic fasta
makeblastdb -dbtype nucl -out viral.1.1.genomic -title viral.1.1.genomic -parse_seqids -taxid_map ../../taxonomy/gi_taxid_nucl.dmp -in ../../fasta/refseq_viral/viral.1.1.genomic.fna

#Create blast protein database from Refseq viral genomic fasta
makeblastdb -dbtype prot -out viral.1.protein -title viral.1.protein -parse_seqids -taxid_map ../../taxonomy/gi_taxid_prot.dmp -in ../../fasta/refseq_viral/viral.1.protein.faa

#Token of success
date >> DATE_OF_BUILD
