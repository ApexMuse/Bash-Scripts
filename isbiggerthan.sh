# Update your isbiggerthan.sh script to exit with different status codes 
# dependent on if the file is bigger than the size or if there is an error.

#!/bin/bash

path=$2
size=$1
returnValue=""

if [ -e $path ]; then
	pathSize=$(stat -c%s "$path")
	if [ $pathSize -gt $size ]; then
		$returnValue="0"
	else
		$returnValue="1"
	fi
else 
	$returnValue="5"
fi

echo $returnValue
