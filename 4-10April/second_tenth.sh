#!/bin/bash
read size
find ./$1 -type f -exec cp {} $2 \;
echo "copied files: $(find ./$1 -type f -size +${size}b | wc -l)"
