#!/bin/bash
###########################################################
# Author:  minhphan
# Date:  Fri Jan 3 20:40:10 +07 2025
# Description:  This script will add system inventory to database file
# Modified:  Fri Jan 3 20:40:10 +07 2025
###########################################################



clear
echo Please enter hostname?
read host
echo

grep -q $host /home/m1nhph4n/bash-scripting/database
if [ $? -eq 0 ]
then
	echo ERROR -- Hostname $host already exist
	echo
	exit 0
fi
echo Please enter IP address?
read IP
echo

grep -q $IP /home/m1nhph4n/bash-scripting/database
if [ $? -eq 0 ]
then
	echo ERROR -- IP $IP already exist
	echo
	exit 0
fi

echo Please enter description?
read description
echo

echo $host $IP $description >> /home/m1nhph4n/bash-scripting/database
echo The provided record has been added
