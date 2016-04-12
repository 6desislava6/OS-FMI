#!/bin/bash
#!/bin/bash
echo 'beginning:'
read first
echo 'end'
read second
for i in $(seq $#)
do
    if [ $(($i * $i)) -ge $first -a $(($i * $i)) -le $second ]
    then
        echo $(($i * $i))
    fi
done
