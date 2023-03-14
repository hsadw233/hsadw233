#!/bin/bash

	 apt-get update
	 apt-get install -y figlet

figlet HsadwTools
echo -e "\033[42;37m ---红色阿迪王 \033[0m"
echo -e "\033[42;37m QQ：295053180 \033[0m"
echo -e "\033[41;36m 正在启动工具箱... \033[0m"
sleep 10
    dialog --title "阿迪王工具箱 --by 红色阿迪王" --menu "Please select an option:" 20 40 10 \
	1 "渗透攻击工具" \
	2 "MC服务器一键部署" \
	3 "QUEU Windows系统" \
	4 "VPN服务一键搭建" \
	5 "退出" \
	2> temp

# 获取用户选择的选项
choice=$(cat temp)

# 根据选择的选项执行相应的操作

case $choice in
	1)
	bash s1.sh
	;;

		2)
	
apt update -y
apt upgrade -y
apt install curl wget zip unzip vim screen jq openssl screen openjdk-17-jre-headless -y
mkdir mcbe_server
cp ./nukkit.zip ./mcbe_server
cd mcbe_server
unzip nukkit.zip

LD_LIBRARY_PATH=. bash start_mc_server.sh
	;;
		3)
	dialog --title "Windows虚拟机安装   --by 红色阿迪王" --menu "Please select an option:" 20 40 10 \
	1 "Windows xp" \
	2 "Windows 95" \
	3 "Windows 7" \
	4 "Windows 10" \
	2> temp1
	# 获取用户选择的选项
choice1=$(cat temp1)

# 根据选择的选项执行相应的操作
case $choice1 in
1)
	if ! dpkg -s qemu-system-x86_64 >/dev/null 2>&1; then
echo -e "\033[41;36m QEMU is not installed! \033[0m"
	
	# 安装java软件包
echo -e "\033[34m Installing QEMU... \033[0m"
	
	 apt-get update
	 apt-get install -y qemu-system-x86_64
echo -e "\033[42;37m QEMU has been installed successfully! \033[0m"
else
echo -e "\033[42;37m QEMU is already installed! \033[0m"
fi
wget http://od.ixcmstudio.cn/utermux/UTermux-Window%E8%99%9A%E6%8B%9F%E6%9C%BA/limbo%E6%A8%A1%E6%8B%9F%E5%99%A8%E4%B8%93%E7%94%A8%E9%95%9C%E5%83%8F/%E9%95%9C%E5%83%8F/xp%E5%8F%AF%E4%BB%A5%E4%B8%8A%E7%BD%91.img
qemu-system-x86_64 xp可以上网.img
;;
2)
if ! dpkg -s qemu-system-i386 >/dev/null 2>&1; then
echo -e "\033[41;36m QEMU is not installed! \033[0m"
	
	# 安装java软件包
echo -e "\033[34m Installing QEMU... \033[0m"
	
	 apt-get update
	 apt-get install -y qemu-system-i386
echo -e "\033[42;37m QEMU has been installed successfully! \033[0m"
else
echo -e "\033[42;37m QEMU is already installed! \033[0m"
	
fi
wget http://od.ixcmstudio.cn/utermux/UTermux-Window%E8%99%9A%E6%8B%9F%E6%9C%BA/bochs%E6%A8%A1%E6%8B%9F%E5%99%A8%E4%B8%93%E7%94%A8%E9%95%9C%E5%83%8F/%E9%95%9C%E5%83%8F%E6%96%87%E4%BB%B6%EF%BC%88BOCHS%E4%B8%93%E7%94%A8%EF%BC%89/%E4%BF%9D%E6%9A%96%E6%96%87%E4%BB%B6%E5%A4%B9/SDL%EF%BC%88%E7%94%A8%E6%9D%A5%E5%AD%98%E4%B8%80%E4%BA%9B%E9%95%9C%E5%83%8F%E6%96%87%E4%BB%B6%E7%94%A8%E7%9A%84%EF%BC%89/%E5%85%B6%E4%BB%96windows%E7%B3%BB%E7%BB%9F%E9%95%9C%E5%83%8F%EF%BC%88%E5%8C%85%E5%90%AB%E8%80%81%E7%B3%BB%E7%BB%9F%EF%BC%89/img%E9%95%9C%E5%83%8F%E6%96%87%E4%BB%B6%E6%94%B6%E7%BA%B3%E6%96%87%E4%BB%B6%E5%A4%B9%EF%BC%88%E7%94%A8%E6%9D%A5%E6%94%B6%E7%BA%B3%E5%87%8C%E4%B9%B1%E6%96%87%E4%BB%B6%EF%BC%89/win95.img
qemu-system-i386 -nographic win95.img
esac
;;

4)
		# 退出程序
		bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
		;;
	5)
		# 退出程序
		exit 0
		;;
		
esac
rm temp
rm temp1