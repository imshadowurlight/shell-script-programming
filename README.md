# shell-script-programming
some practice about learning shell script .
学习脚本编程的小练习

# 执行shell脚本前先加载环境变量
+ 以bash为栗子,脚本文件会加载以下文件的数据
+ /etc/profile
+ /etc/bashrc
+ .bashrc
+ .bash_profile

# 除了环境变量以外,shell还会加载shell变量
+ 用户执行shell文件时指定的参数$1,$2,$3...$*,$@,$?,etc

# 执行脚本方式
+ ./shellfile(相对路径) || 绝对路径
+ sh shellfile(这种情况下执行shell脚本,脚本本身可以不具备x权限)
+ source shellfile || . shellfile(这种情况下执行shell脚本,可以把脚本内的变量加载为shell变量.举个栗子:b.sh想要引用a.sh中的shell变量,由于a.sh的shell变量的域只存在于a.sh当中,b.sh理应无法读取.此时可以在b.sh中执行source a.sh将a.sh的变量加载为b.sh的变量)
