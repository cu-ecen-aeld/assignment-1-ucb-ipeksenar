#!/bin/bash
# Script Finder

if [ $# -eq 2 ];
then
	filesdir=$1
	searchstr=$2
else
	echo "ERROR: Invalid Number of Arguments."
	echo "Total number of arguments should be 2."
	echo "The order of the arguments should be:
	1)File Directory Path.
	2)String to be searched in the specified directory path."
	exit 1
fi

if [[ -d $filesdir ]];
then
	:
else
	echo "ERROR: Directory does not exit."
	exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
sum=0

for i in $(find "$filesdir" -type f);
do
	count=$(grep -c "$searchstr" "$i")
	sum=$((sum + count))
done

echo "The number of files are ${numfiles} and the number of matching lines are ${sum}"
