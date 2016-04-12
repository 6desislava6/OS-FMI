#!/bin/bash
if [ -d ~/$1 ]
    then
    for i in $(find ~/$1 -type f -size +${2}b)
    do
        echo $i
    done
else
    echo 'does not exist'
fi
