#在/home/guang/fileFromScript/目录下创建文件guang1.html~guang10.html
#思路:
# 	1. 创建目录
#	2. 循环创建文件

[ ! -d /home/guang/fileFromScripe ] && mkdir -p /home/guang/fileFromScript
for i in `seq 10`
do 
	touch /home/guang/fileFromScript/gaung${i}.html
done

