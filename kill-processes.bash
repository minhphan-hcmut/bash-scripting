#!/bin/bash
# Author: minhphan
# Date: 03/01/2025
# Description: This script will find and kill sleep process
# Modified: 03/01/2025


#ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}


processId=`ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}'`
for i in $processId
do
	kill $i
done

echo All sleep processes are killed
