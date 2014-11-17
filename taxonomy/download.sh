#!/bin/bash
set -euo pipefail

#Download files from NCBI taxonomy
wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/*.gz
wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/*readme*

#Extract .tar.gz and delete compressed files
for x in `ls *.tar.gz`
do
   tar -xzf $x && rm -f $x
done

for x in `ls *.gz`
do
   gunzip $x
done

#Token of success
date >> DATE_OF_DOWNLOAD
