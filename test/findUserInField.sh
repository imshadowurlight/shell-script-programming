#!/bin/sh
# 获取当前网段的用户以及数量
# 思路:
#	ping 192.168.27.*

prefix='192.168.0.'
for num in `seq 254`
do
	ping -c 1 ${prefix}${num} > /dev/null 2>&1
	if [ $? -eq 0 ]
		then 
			echo "${prefix}${num} is up " >> /tmp/upList.log
	else 
		echo "${prefix}${num} is down " >> /tmp/downList.log
	fi
done
