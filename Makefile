SHELL := /bin/bash

.PHONY: all blast bwa

all: %/DATE_OF_DOWNLOAD

fasta/GRCh38/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

fasta/refseq_viral/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

fasta/swissprot/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

taxonomy/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

blast/nr/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

blast/nt/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

hmmer/DATE_OF_DOWNLOAD:
	cd $(dir $@) && bash download.sh

#build indexes
bwa/GRCh38/DATE_OF_BUILD:
	cd $(dir $@) && bash build_index.sh
