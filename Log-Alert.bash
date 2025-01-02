#!/bin/bash
# Author: minhphan
# Date: 02/01/2025
# Description: This script will send an email about log to administrator
# Modified date: 02/01/2025
#


IT="admin1@hotmail.com,admin2@hotmail.com"

if [ -s /tmp/filtered-messages ]
then
	cat /tmp/filtered-messages | sort | uniq | mail -s "syslog message" $IT
	rm /tmp/filterd-messages
else
fi
