#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will list users logged in by date
# Modified: 02/01/2025


today=`date | awk '{print $1, $2, $3}'`

last | grep "$today" | awk '{print $1}'

