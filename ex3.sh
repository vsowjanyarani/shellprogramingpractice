#!/bin/bash
echo " finding no of file sin a folder" 
read dirname
cd $dirname
x=$(find . -type f | wc -l | cut -d " " -f 1)
echo " $x files are there in the given directory"
