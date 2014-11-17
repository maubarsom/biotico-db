#!/bin/bash
set -euo pipefail

#Download both NR and Swissprot (which depends on NR)
echo "Downloading NR blast database"
wget ftp://ftp.ncbi.nih.gov/blast/db/nr.??.tar.gz

echo "Downloading Swissprot blast database"
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/swissprot.??.tar.gz

#Extract all .tar.gz files and remove the compressed files
for x in `ls *.tar.gz`
do
	tar -xzf $x && rm -f $x
done

#Token of success
date >> DATE_OF_DOWNLOAD
