#!/bin/bash
my_array=($(ls))
for i in ${!my_array[@]};
 do
  echo " ${my_array[$i]}"
  rm ${my_array[$i]}
done
