#!/bin/bash
for i in $@
do
    if [ -f $i ]
        then
        echo ${i:0:2} 'length is ' ${#i}
    else
        echo "$i does not exist"
    fi
done

