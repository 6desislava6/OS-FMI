#!/bin/bash
for i in $(seq $#)
do
    if [ $(($i * $i)) -ge 5 -a $(($i * $i)) -le 105 ]
    then
        echo $(($i * $i))
    fi
done
