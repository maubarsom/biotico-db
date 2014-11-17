#!/bin/bash
set -euo pipefail

#Run kraken build to download RefSeq genomes and create index
kraken-build --standard --threads 24 --db kraken`date +%y%m%d`

#Token of success
date >> DATE_OF_BUILD
