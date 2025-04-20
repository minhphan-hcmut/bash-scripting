#!/bin/bash
# Author: minhphan
# Date: 03/01/2025
# Description: This script will check and give warnings about disk space
# Modified: 03/01/2025


a=`df -h | egrep -v "snapfuse|tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
	if [ $i -ge 50 ]
	then
		echo There is disk space above 50 -  $i `df -h | grep $i | awk '{print $1}'` 
	fi
done
