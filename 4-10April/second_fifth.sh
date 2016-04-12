#!/bin/bash
echo 'matching: '
echo $(cat $1 | grep -c $2)
