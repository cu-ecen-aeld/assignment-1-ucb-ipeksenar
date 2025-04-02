#!/bin/bash
# Writer Script

if [ $# -eq 2 ];
then
	writefile=$1
	writestr=$2
else
	echo "ERROR: Invalid Number of Arguments."
	echo "Total number of arguments should be 2."
	echo "The order of the arguments should be:
	1)File Path (including filename).
	2)String to be written within the file."
	exit 1
fi

echo $writestr > $writefile

if [ $? -eq 1 ];
then
	echo "ERROR: File could not be created."
	exit 1
else
	exit 0
fi
