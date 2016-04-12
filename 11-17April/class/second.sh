#!/bin/bash
if [ $# -le 2 ]
then 
	echo "baad"
	exit 1
fi
length=$#
sum=0
shift
for i in $@
do
	sum=$(($sum + $i))
	echo $i
done
echo $sum	
