#!/bin/bash
while [ 1 ]
do
    read number
    if [ $number -ge 100 -a $number -le 9999 ]
    then
        break
    fi
done
length=$(expr length $number)
num=${number:length-2:1}
case $num in
    1)
    echo "Първа!";;
    2)
    echo "Втора";;
    3)
    echo "Трета";;
    4)
    echo "Четвърта";;
    5)
    echo "Пета";;
    *)
    echo "Няма такава";;
esac
