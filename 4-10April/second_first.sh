#!/bin/bash
counter=1
for i in $(seq $#)
do
    echo $(($i * $i))
done
