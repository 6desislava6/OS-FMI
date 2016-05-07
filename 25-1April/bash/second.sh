#!/bin/bash
# Просто проверявам кои са процесите
ps -elf | awk '{print $15}'| grep $1 | while read i; do
    echo $i
done
echo $(ps -e | awk '{print $15}'| grep -c $1 )
if [ $(ps -e | awk '{print $15}'| grep -c $1 ) ]; then
	mkdir $1
	chmod 770 $1
	for i in $(find -type f -executable); do
		echo $i
        cp $i $1
	done
fi

