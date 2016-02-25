#!/bin/bash
#Tell a story based on the user input

echo -n "Enter your name: "
read name #prompt for input and store it in the variable called name
echo -n "Enter your age: "
read age
echo -n "Enter the name of a city: "
read city
echo -n "Enter a profession: "
read profession
echo -n "Enter a type of animal: "
read animal
echo -n "Enter a pet's name: "
read petName

echo "

There once was a person named $name who lived in $city.  At the 
age of $age, $name went to college at Georgia Southern. $name 
graduated and went to work as a $profession.  Then, $name adopted a(n)
$animal named $petName.  They both lived happily ever after.  The end.

"
