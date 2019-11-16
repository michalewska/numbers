#! /bin/bash
# numbers.sh
# Karolina Michalewska

echo "Welcome to the numbers program."
echo "Please enter a positive integer."
echo "Number: "
read number

while echo "$number" | egrep -v "^[0-9]{1,100}$" > /dev/null 2>&1
do
	echo "Please enter a positive integer."
	echo "Try again: "
	read number
done

for (( N = 1; N <= number; N++ ))
do
	if [ $((N%2)) -eq 0 ]
	then	
		echo "$N Even"
	else
		echo "$N Odd"
	fi
done
