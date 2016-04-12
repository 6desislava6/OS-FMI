#!/bin/bash
for i in $@
do
    old_name=$i
    new_name=$(echo $i | sed -r 's/\.[A-Za-z]*$/.wdt/g')
    echo $i
    mv $old_name $new_name
done

