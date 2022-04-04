#!/bin/bash
count1=0
count2=0
count3=0
echo " read 10 numbers"
for(( i=1; i<=10; i++ ))
 do 
  read n
  a[$i]=n
  if [ ${a[$i]}  == 0 ]
   then
	   count1=$((count1+1))
   elif [ ${a[$i]} -lt  0 ]
    then
	    count2=$((count2+1))
    elif [ ${a[$i]} -gt 0 ]
    then
	    count3=$((count3+1))
   else
	   echo " nothing to do "
  fi  
done
echo " no of zeros are $count1 "
echo " no of -ve numbers are $count2 "
echo "no of +ve numbers are $count3 "
