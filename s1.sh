
#!/bin/bash 
if ! dpkg -s openjdk-17-jre-headless >/dev/null 2>&1; then
echo -e "\033[41;36m Java is not installed! \033[0m"
	
	# 安装java软件包
echo -e "\033[34m Installing Java... \033[0m"
	
	 apt-get update
	 apt-get install -y openjdk-17-jre-headless
echo -e "\033[42;37m Java has been installed successfully! \033[0m"
else
echo -e "\033[42;37m Java is already installed! \033[0m"
fi
if ! dpkg -s unzip >/dev/null 2>&1; then
	echo -e "\033[41;36m Unzip is not installed! \033[0m"
	echo -e "\033[34m Installing Unzip... \033[0m"
	 apt-get update
	 apt-get install -y unzip
	echo -e "\033[42;37m Unzip has been installed successfully! \033[0m"
else
	echo -e "\033[42;37m Unzip is already installed! \033[0m"
fi
  if test -e "1.java"; then
  echo -e "\033[42;37m The file has been decompressed! \033[0m"
else 
   unzip tool.zip
   fi
# 使用dialog创建伪图形界面
while [ 1 -eq 1 ]
do
dialog --title "Welcome!" --menu "Please select an option:" 50 30 17 \
	1 "网站后台扫描" \
	2 "电话轰炸" \
	3 "CC攻击" \
	4 "端口扫描" \
	5 "短信轰炸" \
	6 "Q绑查询" \
	7 "MySQL密码爆破" \
	8 "代理自动爬取" \
	9 "多线程UDP攻击" \
	10 "QQ老密查询" \
	11 "SYN TCP攻击" \
	12 "摄像头（娱乐" \
	13 "SSH连接器" \
	14 "SSH密码爆破" \
	15 "WEB服务器" \
	16 "CC攻击（外部接口）" \
	17 "返回上一级" \
	18 "退出" \
	2> temp

# 获取用户选择的选项
choice=$(cat temp)

# 根据选择的选项执行相应的操作
case $choice in
1)
	
	java 1.java
	sleep 1000 ;;
	2)
	java 2.java
	sleep 1000 ;;
	3)
	java 3.java
	sleep 1000 ;;
	4)
	java 4.java
	sleep 1000 ;;
	5)
	java 5.java
	sleep 1000 ;;
	6)
	java 6.java
	sleep 1000 ;;
	7)
	java 7.java
	sleep 1000 ;;
	8)
	java 8.java
	sleep 1000 ;;
	9)
	java 9.java
	sleep 1000 ;;
	10)
	java 10.java
	sleep 1000 ;;
	11)
	java 11.java
	sleep 1000 ;;
	12)
	java 12.java
	   sleep 1000 ;;
	13)
	java -classpath ./jsch.jar 13.java
	sleep 1000 ;;
	14)
java -classpath ./jsch.jar 14.java
	sleep 1000 ;;
	15)
	java 15.java
	sleep 1000 ;;
	16)
	java 16.java
	;;
	17)
	bash Start.sh
	break
	sleep 1000 ;;
	18)
	break
	sleep 1000 ;;
esac

# 删除临时文件
rm temp
done
