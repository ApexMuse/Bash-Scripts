# Create a script called getallsizes.sh , which takes in any number of files on 
# the command line and prints their sizes.

#!/bin/bash

if [ $# -eq 0 ]; then
	echo "
	This command requires at least one argument:
	one or more files.
	"
	exit 1
fi

i=1

for arg in $*

do
	if [ -e $arg ]; then
		echo ""
		echo -n "$arg  "
		echo $(stat -c%s "$arg")
	else
		echo "
		Argument $i does not exist.
		"
	fi
		
	let i++
	
	if [ -z "$i" ]; then
		i=0
	fi
done

echo ""
