#!/bin/bash
# if [ [ $op -eq "-" ] || [ $op -eq "+" ] || [ $op -eq "\*" ] || [ $op -eq "\" ] ]
 # then
 if [ \( $op == '-' \) -o \( $op == '+' \) -o \( $op == '/*' \) -o \( $op == '/' \) ];
   then
     value=`expr $op1 $op $op2`
 fi
# fi

echo "value is $value"

