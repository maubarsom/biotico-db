#!/bin/bash
set -euo pipefail

#Download Pfam
wget ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release/Pfam-A.hmm.gz
gunzip *.gz
#Download vFam - Skewes-Cox,2014
wget http://derisilab.ucsf.edu/software/vFam/vFam-A_2014.hmm

#Run hmmpress to prepare the profiles to be used with hmmscan
hmmpress Pfam-A.hmm
hmmpress vFam-A_2014.hmm

#Token of success
date >> DATE_OF_DOWNLOAD
