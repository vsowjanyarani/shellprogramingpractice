#!/bin/bash
echo "home directory is $HOME "
echo "current user is $USER"
d=`date +%m-%d-%y`
echo "tosday is $d"
echo "today is $(date +%m-%d-%y)"
echo "list of users currently logged and count is $(who -q)"
tnum=`tty`
echo " terminal number is $( cut -c 10- <<< $tnum )"

