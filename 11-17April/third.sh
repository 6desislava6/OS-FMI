#!/bin/bash
echo 'give me a directory! '
read directory
mkdir ~/$directory
find . -perm /a+rw -type f -exec cp {} ~/$directory \;
