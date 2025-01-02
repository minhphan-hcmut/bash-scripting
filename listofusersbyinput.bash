#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will list users logged in by user input
# Modified: 02/01/2025

echo "Please enter day (e.g. Mon)"
read day
echo
echo "Please enter month (e.g. Aug)"
read month
echo
echo "Please enter date (e.g. 28)"
read date
echo

# This script will have another blankspace between month and date because of my wsl Ubuntu24.04LTS format
# If your machine cannot run this script, pls modify 
last | grep "$day $month  $date" | awk '{print $1}' 

