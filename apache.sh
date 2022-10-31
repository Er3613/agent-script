##Author: Eric      
##Date:  21 oct 2022

echo "apache will be installed and configured in few min..."
sleep 3

yum install firewalld -y
systemctl enable firewalld
systemctl start firewalld
systemctl status firewalld
yum install httpd -y

echo "apache installation completed"
echo "apache configuration in few min..."
sleep 3
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
systemctl start httpd
systemctl status httpd

echo "apache is ready please get ip address and type on the browser"