echo " enter basic of sal"
read b
dp=`expr 50 \* $b / 100`
echo $dp
sum=`expr $b + $dp`
da=`expr 35 \* $sum / 100`
echo $da
hra=`expr 8 \* $sum / 100`
echo $hra
ma=`expr 3 \* $sum / 100`
echo $ma
pf=`expr 10 \* $sum / 100`
echo $pf
