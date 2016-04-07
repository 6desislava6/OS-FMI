#!/bin/bash
while [ True ]
do

	result=$(w | grep -c $1)
	if [ $result -gt 0 ]
	then
		echo "Online"
		sleep 1
	else 
		echo "Exited"
		exit 1
	fi
done
