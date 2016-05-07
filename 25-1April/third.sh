#!/bin/bash

while [ ${#} -gt 0 ]; do
    if [ -d $1 ]; then
        group=$(ls -l | grep $1 | awk '{print $4}')
        owner=$(ls -l | grep $1 | awk '{print $3}')
        for i in $(find ./$1 -type f ); do
            owner_file=$(ls ./$i -l | grep $i | awk '{print $3}')
            if [ "$owner_file" == "$owner" ]; then
                chgrp $group $i
            fi
        done
    fi
    shift
done
