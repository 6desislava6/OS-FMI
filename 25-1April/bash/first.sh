#!/bin/bash
counter=0
grep -e "^$1" $2 | while read i; do
	
	kill $(echo $i | awk '{print $2}')
	counter=$(($counter + 1))
done
echo $counter > killed.txt

