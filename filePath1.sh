#!/bin/bash
echo " enter a file name to find the path"
read filename
path=$(readlink -f  $filename)
echo "read link path is $path"
path1=$(find $PWD -type f -name $filename)
echo " find path is $path1"
