#!/bin/bash
# (в символи) по-голям ?
if [ -d $1 ]
then
    echo "directory exists"
    for i in $(find ./$1 -type f -size +${2}b)
    do
        echo $i
    done
else
    echo "directory does not exist"
fi
