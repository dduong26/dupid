#!/bin/bash

###
# Author:  David Duong
# Date:  Jan 30th 2019
# About:  Checks the numbers of PIDs for an app to make sure there is only 1.
#		  If there are more than one, it will find the oldest PID and kill it
#

## Get a proc count
PROC_CNT=`ps cax | pgrep queued | wc -l`

## Get the oldest PID id
OLDEST_PID=`ps cax | pgrep -o queued`


if [ ${PROC_CNT} -ge 2 ]; then
	echo "The oldest ID is ${OLDEST_ID}"
	echo "Killing ${OLDEST_ID}"
	kill -9 ${OLDEST_ID}
else
	echo "There is only 1 pid, we are good"
fi
