#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will create a user account with description, ID and check for existing users and IDs
# Modified: 02/01/2025

echo "Please provide a username?"
read u
echo

grep -q $u /etc/passwd
if [ $? -eq 0 ]
then
	echo ERROR -- User $u already exist
	echo Please choose another username
	echo
	exit 0
fi

echo "Please provide user description?"
read d
echo

echo "Do you want to specify user ID (y/n)?"
read ynu
echo
if [ $ynu == y ] 
then 
	echo "Please enter UID?"
	read uid
	grep -q $uid /etc/passwd
	if [ $? -eq 0 ]
	then
		echo ERROR -- UserID $uid already exist
		echo
		exit 0
	else
		useradd $u -c "$d" -u $uid
		echo
		echo $u account has been created
	fi
elif [ $ynu == n ]
then
	echo No worries we will assign a UID
	useradd $u -c "$d"
	echo
	echo $u account has been created
fi
