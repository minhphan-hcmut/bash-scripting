#!/bin/bash
# Author: minhphan
# Date: 03/01/2025
# Description: This script will check and give warnings about disk space
# Modified: 03/01/2025

df -H | grep -vE '^Filesystem|tmpfs|cdrom|snapfuse' | awk '{print $5,$1}' | while read output
do
	usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1 )
	partition=$(echo $output | awk '{print $2}' )

	if [ $usep -ge 60 ]
	then
		echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
	fi
done
