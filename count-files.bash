#!/bin/bash
# Author: minhphan
# Date: 03/01/2025
# Description: This script will verified total number of files
# Modified: 03/01/2025
#

# Defining variable a
a=`ls -l file* | wc -l`

if [ $a -eq 20 ]
then
	echo Yes there $a files
else
	echo Files are less than 20
fi
