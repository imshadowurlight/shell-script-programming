#!/bin/sh
# 批量创建用户guang001~guang100,并创建初始化密码123456
# 后期可以改为读取一个文件,该文件为名字的集合(比如说为一个班级的同学创建用户)

for num in `seq -w 100`
do
	useradd guang${num}&&\
	echo "123456"|passwd --stdin guang${num}
#	useradd guang${num} -p '123456'
done
