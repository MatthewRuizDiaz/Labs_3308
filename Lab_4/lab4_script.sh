#!/bin/bash
# Authors : Matthew Ruiz Diaz
# Date:  09/25/2020
cp /var/log/syslog .
grep -e "Error\|error\|ERROR" syslog | tee error_log_check.txt
sendmail maru1036@colorado.edu < error_log_check.txt



