


###防火墙相关
#防火墙开启端口
firewall-cmd --zone=public --add-port=5000/tcp --permanent 
# 重新加载防火墙
firewall-cmd --reload 
#开启防火墙
systemctl start firewalld 

#Mac 查看远程端口
nc -vz -w 2 43.153.177.244 5000