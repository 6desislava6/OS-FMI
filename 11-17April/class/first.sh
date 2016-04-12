#!/bin/bash
if [ $# -ne 2 ]
then
	echo "They should be 2!"
else
	echo $(($1 + $2))
fi
