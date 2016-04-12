#!/bin/bash
first=$(find ./$1/*.out | wc -l)
second=$(find ./$2/*.out | wc -l)
if [ $first -ge $second ]
then
    echo 'greater'
else
    echo 'less'
fi
