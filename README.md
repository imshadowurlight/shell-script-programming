# shell-script-programming
some practice about learning shell script .
学习脚本编程的小练习

# 执行shell脚本前先加载环境变量
+ 以bash为栗子
+ /etc/profile
+ /etc/bashrc
+ .bashrc
+ .bash_profile

# 除了环境变量意外,shell还会加载shell变量
+ 用户执行shell文件时指定的参数$1,$2,$3...$*,$@,$?,etc

# 执行脚本方式
+ ./shellfile(相对路径) || 绝对路径
+ sh shellfile
+ source shellfile || . shellfile
