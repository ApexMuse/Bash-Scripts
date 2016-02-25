# Write a script that takes a username as an argument and prints the full name of that user.

#!/bin/bash

result=$(grep --line-number -i $1 users.txt | sed G)

echo ""
echo "$result"
echo ""


