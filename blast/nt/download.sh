#!/bin/bash
set -euo pipefail

#Download NT blast database files
wget ftp://ftp.ncbi.nih.gov/blast/db/nt.??.tar.gz

#Decompress and remove all compressed files
for x in `ls nt.??.tar.gz`
do
	tar -xzf $x && rm -f $x
done

#Token of success
date >> DATE_OF_DOWNLOAD
