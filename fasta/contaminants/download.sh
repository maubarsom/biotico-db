#!/bin/bash
set -euo pipefail
#Download phiX174 sensu lato 
wget 'http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=9626372&rettype=fasta&retmode=text' -O contaminants.fa

#Token of success
date >> DATE_OF_DOWNLOAD
