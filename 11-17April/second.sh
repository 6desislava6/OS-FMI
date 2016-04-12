#!/bin/bash
for i in $@
do
    permissions=$(ls -l $i | cut -d " " -f 1)
    if [[ $(echo $permissions | grep r) ]]
        then
        echo "It has a r bit!"
    fi
    if [ -d $i ]
        then
        count_files=$(ls $i | wc -l)
        echo "size must be over $count_files"
        find . -size +${count_files}b
        echo '*******'
    fi
done
