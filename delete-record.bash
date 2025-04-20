#!/bin/bash
###########################################################
# Author:  minhphan
# Date:  Fri Jan 3 20:40:10 +07 2025
# Description:  This script will delete system inventory to database file
# Modified:  Fri Jan 3 20:40:10 +07 2025
###########################################################


clear
echo Please enter hostname or IP address?
read hostip
echo



grep -q $hostip /home/m1nhph4n/bash-scripting/database
if [ $? -eq 0 ]
then
	echo
	sed -i '/'$hostip'/d' /home/m1nhph4n/bash-scripting/database
	echo $hostip has been deleted
else
	echo Record $hostip does not exist
fi
