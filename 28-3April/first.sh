#!/bin/bash
if [ "$1" -ge "$2" -a "$1" -le "$3" ]
then
	echo "It's inside"
else
	exit 99
fi
