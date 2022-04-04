#!/bin/bash
echo " enter number to caluclate sum"
read n
sum=0
for ((i=$n;i>=1;i--))
 do
 sum=$((sum + i))
done
echo "sum is $sum"
