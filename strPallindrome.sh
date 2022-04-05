#!/bin/bash
echo "enter a string to find string is pallindrome or not"
read str
len=${#str}
echo "length is $len"
i=1
while [ $i -le $len ]
 do
  str_array[$i]=$(echo $str | cut -c $i)
  echo "$i th character is ${str_array[$i]}"
  i=$((i+1))
done
j=1
k=$len
while [ $j -le $len ]
 do
  if [ ${str_array[$j]} == ${str_array[$len]} ]
   then
       j=$((j+1))
       len=$((len-1))
       
    if [ $j -eq $len -o $len == `expr $j + 1` ]
     then
	  echo "string is pallindrome"
	   exit 1
    fi
   
   else
    echo " string is not a pallindrome"
    exit 1
  fi
done
