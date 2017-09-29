#!/bin/sh
# 将/home/guang/fileFromScript/目录下文件guang1.html~guang10.html改为linux1.txt~linux10.txt
# 就是说:要批量重命名文件

cd /home/guang/fileFromScript
for file in `ls *.html`
do
	mv ${file} `echo ${file}|sed 's#gaung#linux#g'|sed 's#html#txt#g'`
done 
