#!/bin/bash
echo "enter principal amount"
read a
echo "enter the time peroid"
read t
echo "enter the rate of interest"
read r
s=`expr $a \* $t \* $r / 100`
echo "thwe simple interest is"
echo $s


