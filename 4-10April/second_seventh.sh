#!/bin/bash
read first
read second
matching=$(cat $1 | grep -c $2)
if [ $matching -ge $first -a $matching -le $second ]
    then
    echo $matching
fi
