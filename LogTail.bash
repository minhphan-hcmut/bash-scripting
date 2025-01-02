#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will log only defined words
# Modified date: 02/01/2025
#

tail -fn0 /var/log/messages | while read line
do
	echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
	if [ $? = 0 ]
	then
		echo $line >> /tmp/filtered-messages
	fi
done
