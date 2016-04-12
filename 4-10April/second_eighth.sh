#!/bin/bash
find ./$1 -type f -exec cp {} $2 \;
