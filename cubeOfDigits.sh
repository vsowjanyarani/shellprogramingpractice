#!/bin/bash
echo " read number n from 1 to 999"
read n
if [[ $n -ge 1 && $n -le 999 ]]
then
  echo "valid number"
  d1=$( echo $n | cut -c 1 )
 echo "$d1"
  d2=$( echo $n | cut -c 2 )
 echo "$d2"
  d3=$( echo $n | cut -c 3)
 echo "$d3"
 result0=`expr $d1 \* $d1 \* $d1`
 result1=`expr $d2 \* $d2 \* $d2`
 result2=`expr $d3 \* $d3 \* $d3`
 result=$((result0+result1+result2))
echo "result is $result"
 if [ $result ==  $n ]
 then
	echo " num is valid"
else
	echo "not a valid num"
      fi	
 else
   echo " number is not valid"
   exit 1
fi
