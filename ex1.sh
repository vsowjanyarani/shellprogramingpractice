#!/bin/bash
#p=$(pwd)
#find $p -type f -mtime +10
for x in $(find /home/ubuntu/ -type f -mtime +3);
do
       	rm "$x";
done
