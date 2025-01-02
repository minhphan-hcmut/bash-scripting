#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will disable inactive accounts that loggin in 90 days
# Modified: 02/01/2025


a=`lastlog -b 90 | tail -n+2 | awk '{print $1}'`
for i in $a
do
	usermod -L $i
done
