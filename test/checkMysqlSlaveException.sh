#!/bin/sh 
#
# 阶段1：开发一个守护进程脚本每30秒实现检测一次。 
# 	检查mysql主从同步是否存在异常
# 	slave文件位置放置在:/home/guang/shell-execise/supportFiles/slave.log
# 	主要判断三个参数:
# 		1. Slave_IO_Running 
# 		2. Slave_SQL_Running
# 		3. Seconds_Behind_Master
#
# 阶段2：如果同步出现如下错误号（1158,1159,1008,1007,1062），则跳过错误。 
# 	相关参数是:
#		1. Last_Errno
#	
# 阶段3：请使用数组技术实现上述脚本（获取主从判断及错误号部分）

result="something was wrong in mysql slave,please cheak it."
# 定义变量slave,1:正常, 0:异常
slave=1
while true
do
		array=($(egrep "_Running|Behind|Last_Errno" /home/guang/shell-execise/supportFiles/slave.log|awk '{print $NF}'))
		for statu in ${array[@]}
		do
			if [ "${statu}" != "Yes" -a "${statu}" != "0" -a "${statu}" != "1158" -a "${statu}" != "1159" -a "${statu}" != "1008" -a "${statu}" != "1007" -a "${statu}" != "1062" ]
				then
					slave=0
					# 跳出循环
					break
			fi
		done

		# 迭代判断以上三个参数,如果没有问题,则返回系统正常的提示
		if [ ${slave} -eq 1 ]
			then
				echo "mysql slave is ok,everything work commonly"
		elif [ ${slave} -eq 0 ]
			echo "${result}"
			# 发送邮件到邮箱中提醒管理员出大事啦
			echo "${result}"|mail -s "${result}" 156821138@qq.com
		fi		
sleep 3600
done 

