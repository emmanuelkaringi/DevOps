#!/bin/bash

####################
# Author: Emmanuel Kariithi
# Date: 07/05/2024
#
# This script outputs the node health
#
# Version: 1.0
####################


#Show command being executed - debug mode
set -x

#exit the script when there is an error
set -e
#set -e does not work with pipe arguments, add - o pipefail, used to catch pipe failure
set -o pipefail

#set -exo pipefail

# Print the disk space
#echo "Print the disk space"
df -h

# Print the memory
#echo "Print the memory"
free -g

# Print the resources
#echo "Print the cpu"
nproc

# Print the processes
# Use pipe to run the command i.e. ./nodeHealth.sh | grep "amazon"
# Use awk to get the specific column ie PID (awk -F" " '{print $2}')
ps -ef | grep brave | awk -F" " '{print $2}'

#Prevent interruption of the execution
#trap signal(do more research on this)




#Exit and save file in vim :wq!
