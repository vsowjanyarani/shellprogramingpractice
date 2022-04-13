#!/bin/bash
echo 'date'
cpu_threshold=80
mem_threshold=100
disk_threshold=90
cpu_usage () {
	cup_idle=$(top -b -n 1 | grep ^%Cpu | awk '{printf("current cpu tuilization is:%.2f%"), 100-$8}')
	cpu_use=`expr 100 - $cpu_idle`
	echo " cpu utilization : $cpu_use "
	if [ $cpu_use > $cpu_threshold ]  
	 theni
	  echo "cpu warning"
          else 
	   echo "cpu is ok!!"
	 fi
 }
mem_usage () {
	mem_free=`free -m | grep "Mem" | awk '{print $4+$6}'`
	echo "memory space remaining : $mem_free MB"
	if [ $mem_free -lt $mem_threshold ]
	 then 
           echo "mem warning"
          else
           echo " mem is ok"
	fi
}
disk_usage () {
	disk_use=`df -P | grep /dev | grep -v -E '(tmp|boot)' | awk '{print$5}' | cut -f 1 -d "%"`
	echo "disk usage is $disk_use"
	if [ $disk_use -gt $disk_threshold ]
	 then 
	  echo "disk warning!!"
	 else 
           echo "disk is ok!!"
	 fi
}
cpu_usage
mem_usage
disk_usage
