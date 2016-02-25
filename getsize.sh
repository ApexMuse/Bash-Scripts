# Write a script, getsize.sh , which takes a path as an argument and prints out 
# the size of the file/dir at that path. Your script must do error checking.

#!/bin/bash

if [ $# != 1 ]; then
	echo "
	This command requires one argument:
	a path to a file or directory.
	"
	exit 1
fi


if [ -f $1 ] || [ -d $1 ]; then
	echo ""
	echo $(stat -c%s "$1")
	echo ""
else
	echo "
	$1 is not a valid file or directory.
	"
fi

