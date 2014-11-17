#!/bin/bash
set -euo pipefail

#Main Chromosomes 1-22, X , Y
wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Eukaryotes/vertebrates_mammals/Homo_sapiens/GRCh38/Primary_Assembly/assembled_chromosomes/FASTA/*.fa.gz
gunzip *.gz
cat *.fa | sed -r '/^>/s/.*?chromosome ([0-9MTXY]*?),.*$/>chr\1/' >  genome.fa

#Chromosome MT
#Latest sequence from NCBI nuccore db
#wget -O chrMT.fa http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_012920.1&rettype=fasta&retmode=text
wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Eukaryotes/vertebrates_mammals/Homo_sapiens/GRCh38/non-nuclear/assembled_chromosomes/FASTA/chrMT.fa.gz
gunzip chrMT.fa.gz
sed -r '/^>/s/.*/>chrM/' chrMT.fa >> genome.fa

#Unlocalized scaffolds
mkdir -p unlocalized_scaffolds
cd unlocalized_scaffolds
wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Eukaryotes/vertebrates_mammals/Homo_sapiens/GRCh38/Primary_Assembly/unlocalized_scaffolds/FASTA/*.fa.gz
gunzip *.fa.gz
cd ..
cat unlocalized_scaffolds/*.fa >> genome.fa

#unplaced scaffolds
mkdir -p unplaced_scaffolds
cd unplaced_scaffolds
wget ftp://ftp.ncbi.nih.gov/genbank/genomes/Eukaryotes/vertebrates_mammals/Homo_sapiens/GRCh38/Primary_Assembly/unplaced_scaffolds/FASTA/*.fa.gz
gunzip *.gz
cd ..
cat unplaced_scaffolds/*.fa >> genome.fa

#mkdir -p transcripts
#cd transcripts
##mRNA's  from UCSC
#wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/mrna.fa.gz
##mRNA's or coding sequences from ncbi
#ftp://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/mRNA_Prot/human.rna.fna.gz
#cd ..

#Token of success
date >> DATE_OF_DOWNLOAD
