#!/bin/bash
for i in $(find ./$1 )
do
    if [ -f $i ]
    then
        echo $(wc -c $i)
    else
        echo $i >> $2
    fi
done
