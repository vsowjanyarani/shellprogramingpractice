#!/bin/bash
echo " enter basic sal of rajesh "
read basic
da=`expr 34 \* $basic / 100`
echo " da of sal is $da"
hra=`expr 24 \* $basic / 100`
echo "hra of sal is $hra"
pf=`expr 11 \* $basic / 100`
echo "pf is $pf"
gross=`expr $basic + $hra + $da + $pf`
echo " gorss sal is $gross"
