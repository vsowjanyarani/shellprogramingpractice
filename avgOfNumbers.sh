#!/bin/bash
echo "read n numbers "
read n
i=1
sum=0
echo "enter numbers"

while [ $i -le $n ]
 do  
   echo " enter number"
   read num
   sum=$((sum + num))
   echo "sum: $sum"
   i=$((i + 1))
  done

  avg=$(echo $sum / $n | bc -l)
 echo $avg



