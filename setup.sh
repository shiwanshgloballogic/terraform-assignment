#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to Your Web Server!</h1>" > /var/www/html/index.html
