# Create a new script isbiggerthanall.sh which takes the following arguments:
# isbiggerthanall.sh size path [path [...]]
# which outputs all the files provided that are bigger than the size. Your 
# script must call your isbiggerthen.sh script and check the exit status to 
# determine the result and output.

#!/bin/bash

result=""

if [ "$1" -eq "$1" ] 2> /dev/null &&  [ $# -gt 1 ]; then
	if [ $1 -lt 0 ]; then
		echo "
		Error: The size must positive.
		"
		exit 4
	else 
		size=$1
		i=2
		command=sh ./isbiggerthan.sh $size $arg
		for arg in $i; do
			if [ "$(sh ./isbiggerthan.sh $size $myArg)" = 0 ]; then
				echo "$arg"
			fi
			let i++
		done
	fi
else
	echo "
	Error: Require a size and at least one file.
	"
	exit 2
fi

