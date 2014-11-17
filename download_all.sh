#!/bin/bash
set -euo pipefail

if [[ -e DATE_OF_DOWNLOAD_ALL ]];
then
	exit 0;
fi

BASE_DB_DIR=`pwd`

#Download all databases
for CUR_DIR in `find . -type d `;
do
	if [[ -e $CUR_DIR/download.sh && ! -e $CUR_DIR/DATE_OF_DOWNLOAD ]];
	then
		echo "Entering $CUR_DIR"
		cd $CUR_DIR
		echo  "Executing download.sh @ "`pwd`
		bash download.sh
		echo "Exiting $CUR_DIR"
		cd $BASE_DB_DIR
	fi
done

#Build indexes using the downloaded databases
for CUR_DIR in `find . -type d `;
do
	if [[ -e $CUR_DIR/build_index.sh && ! -e $CUR_DIR/DATE_OF_BUILD ]];
	then
		echo "Entering $CUR_DIR"
		cd $CUR_DIR
		echo "Executing build_index.sh @ "`pwd`
		bash build_index.sh
		echo "Exiting $CUR_DIR"
		cd $BASE_DB_DIR
	fi
done

#Token of success with date of completion
date >> DATE_OF_DOWNLOAD_ALL
