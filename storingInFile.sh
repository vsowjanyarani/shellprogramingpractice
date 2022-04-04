#!/bin/bash
echo "enter file name"
read file
touch $file
echo " enter cd number"
read num
echo "enter movie name"
read movie
echo "enter launguage"
read lan
echo " enter price of cd"
read price
echo "enter date of release"
read dor
echo "cd num is $num" >> $file
echo "movie name $movie" >> $file
echo "launguage is $lan" >> $file
echo "price of cd is $price" >> $file
echo "date of release is $dor" >> $file

