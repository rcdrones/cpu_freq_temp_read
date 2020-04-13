#!/bin/bash

echo RPi CPU temp read by rcdrones. 

#aa=`sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`

#aa=`expr ${aa} / 1000`

#echo CPU runing on ${aa}MHz


for ((i=0;i<900;i++))
do
	bb=`sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq`

	bb=`expr ${bb} / 1000`

	#echo CPU runing on ${bb}MHz

	aa=`cat /sys/class/thermal/thermal_zone0/temp`
	aa=`expr ${aa} / 1000`
	
	echo "freq:${bb} --> temp:${aa}"
	echo $aa >> log.cvs
	
	sleep 1
done







