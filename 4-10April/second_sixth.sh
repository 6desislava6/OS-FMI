#!/bin/bash
matching=$(cat $1 | grep -c $2)
if [ $matching -ge 15 -a $matching -le 35 ]
    then
    echo $matching
fi
