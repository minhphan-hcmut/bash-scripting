!/bin/bash
# Author: minhphan
# Date: 03/01/2025
# Description: This script will check and give warnings about disk space
# Modified: 03/01/2025

echo
echo Following is the disk space status
echo
df -h | awk '0+$5 >= 90 {print}' | awk '{print $5,$6}'
