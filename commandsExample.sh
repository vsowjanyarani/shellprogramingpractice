#!/bin/bash
my_array=(man bear pig dog cat sheep)
i=1
len=${#my_array[@]}
echo "len is $len"
for x in ${my_array[@]}
 do
 if [ $i -le $len ]
 then	 
  echo "${my_array[$i]}"
  i=$((i+1))
 fi
done
