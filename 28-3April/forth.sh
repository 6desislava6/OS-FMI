#!/bin/bash
read text
for name in "$@"
do	
	lines=$(cat $name | grep -c $text)
	echo $name " has " $lines " lines"
done
