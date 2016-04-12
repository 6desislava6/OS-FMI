#!/bin/bash
echo "Enter number: "
read number
while [ ${#number} -lt 5 ]
do
	echo "The number must have more than 5 digits"
	read number
done
lenght="${#number}"
echo "Hundred's digits is: " ${number:$lenght-2:1}
for i in $(seq $lenght -1 1)
do
    echo -n ${number:$i:1}
done
