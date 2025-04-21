#!/bin/bash

# 3.1 Absolute vs relative directories
# -> "cd .. " means go up a directory

# 3.2 Change to the last directory -> "cd -"

# 3.3 Change to the home directory
# -> cd
# -> cd $HOME
# -> cd ~


# 3.4 Change to the directory of the Script
echo "$(dirname "$(readlink -f "$0")")"
cd "$(dirname "$(readlink -f "$0")")"

# readlink -f "$0" determines the path to the current script $0
# dirname converts the path to script to the path to its directory
# cd chanes the current work directory to the directory it receives from dirname
# NOTES: just change the directory inside the script not in the terminal which is running the bashscript