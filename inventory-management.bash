#!/bin/bash
###########################################################
# Author:  minhphan
# Date:  Fri Jan 3 20:40:10 +07 2025
# Description:  This script will manage system inventory to database file
# Modified:  Fri Jan 3 20:40:10 +07 2025
###########################################################



clear

echo 
echo Please select one of the following options:
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo


read choice
case $choice in
	a) 	/home/m1nhph4n/bash-scripting/add-record.bash;;
	d)	/home/m1nhph4n/bash-scripting/delete-record.bash;;
	*)	echo Invalid choice - Bye.

esac

#!/bin/bash
###########################################################
# Author:  minhphan
# Date:  Fri Jan 3 20:40:10 +07 2025
# Description:  This script will manage system inventory to database file
# Modified:  Fri Jan 3 20:40:10 +07 2025
###########################################################



clear

echo 
echo Please select one of the following options:
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo


read choice
case $choice in
	a) 	/home/m1nhph4n/bash-scripting/add-record.bash;;
	d)	/home/m1nhph4n/bash-scripting/delete-record.bash;;
	*)	echo Invalid choice - Bye.

esac
