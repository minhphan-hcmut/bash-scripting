#!/bin/bash
#

read -r -p "Enter name of script: " script
read -r -p "Whats your fullname: " fname
read -r -p "Whats the description of this script: " description

echo "#!/bin/bash" > /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "###########################################################" >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "# Author: " $fname >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "# Date: " $(date) >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "# Description: " $description >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "# Modified: " $(date) >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
echo "###########################################################" >> /home/m1nhph4n/bash-scripting/${script}.bash
echo
chmod a+x ${script}.bash
nvim ${script}.bash

