#!/bin/bash
declare -a data
data=($(ls -l | cut -c 1))
echo " num of elements is ${#data[*]}"
echo " num of elements is ${#data[@]}"
i=1
filecount=0
dircount=0
while [ "$i" -le ${#data[*]} ]
do 
 if [[ ${data[$i]} == "-" ]]
 then
  filecount=$((filecount+1))
  echo " file $i is ${data[$i]}"
  elif [[ ${data[$i]} == "d" ]] 
    then
	dircount=$((dircount+1))
	echo " directory $i is $data[$i] "
   else
    echo "some other data"
 fi
 i=$((i+1))
done
