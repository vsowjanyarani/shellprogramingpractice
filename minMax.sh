#!/bin/bash
echo " enter numbers"
for ((i=1;;i++))
 do
   read n
   a[$i]=$n
   min=${a[1]}
   max=${a[1]}
   if [ ${a[$i]} == '@' ]
    then
     exit
    fi
    if [ $i == 1 ]
     then
	 min=${a[1]}
          max=${a[1]}
     fi
    if [ $min>${a[$i]} ]
    then
      min=${a[$i]}
     fi
    if [ $max -lt ${a[$i]} ]
     then
	max=${a[i]} 
    fi
 done
 echo "max number is $max"
 echo "min number is $min"
 
