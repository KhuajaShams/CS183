#!/bin/bash

yum -y install httpd

#vi /etc/httpd/conf/httpd.conf

#systemctl start httpd.service

#vi /var/www/html/index.html

#yum -y install elinks

#passwd root
#useradd ksham004
#passwd ksham004

#cd /var/www/html
#ln -s /etc/passwd password
#elinks http://127.0.0.1/password

#vi /etc/httpd/conf/httpd.conf
# comment out FollowSymLinks
#stop httpd service
#restart it

#systemctl enable httpd
#uptime; systemctl status httpd.service; systemctl list-units httpd.service


#yum -y install php php-mysql

#vi /var/www/html/index.php

#RESTART httpd.service and elinks http://127.0.0.1/index.php

#wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
#rpm -ivh mysql-community-release-el7-5.noarch.rpm
#yum update

#systemctl start mysqld.service
#mysql_secure_installation
#yes for everything

#vi mysql.txt

#mysql -u root -p < mysql.txt

