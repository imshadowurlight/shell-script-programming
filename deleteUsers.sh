#!/bin/sh
# 前面,批量创建用户guang001~guang100,并创建初始化密码123456,现在把他们删除掉

for num in `seq -w 100`
do
	userdel guang${num}
done
