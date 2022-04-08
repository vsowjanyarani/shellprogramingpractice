#!/bin/bash
h=$(hostname)
echo " take input from user $h"
echo " ssh to particular host"
echo "enter ip of host to connect"
read p
#ssh -i ubuntu@$h
#ssh ubuntu@$p
#exit
echo "enter data to transfer"
read d
scp $d  ubuntu@$p:/home/ubuntu


