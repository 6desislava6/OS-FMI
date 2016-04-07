#!/bin/bash
previous=""
for name in "$@"
do
	if [ ! $previous =  "" ]
	then
		echo $previous " loves "$name
	fi
	previous=$name;		
done
