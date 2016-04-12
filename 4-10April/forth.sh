#!/bin/bash
draw_symbols(){
    for k in $(seq $1 -1 0)
    do
        echo -n "$2"
    done
}
symbol='*'
space=' '
for i in $(seq $1 -1 1)
do
    draw_symbols $(($1 - $i)) ' '
    draw_symbols $i "$symbol"
    echo
done


