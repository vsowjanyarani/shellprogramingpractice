#!/bin/bash
i=1
sum=0
for  x in $i 
do
 if [ $i -le $# ]
  then	 
   sum = `expr $sum + $x`
   i = `expr $i + 1`
  fi
done
echo "sum is $sum"
echo "avg is $(expr sum / i)"
