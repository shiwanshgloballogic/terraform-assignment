#!/bin/bash

# Update package repository
sudo yum update -y

# Install Apache web server
sudo yum install -y httpd

# Start Apache and enable it to start on boot
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a simple HTML page
echo "<html><body><h1>Hello from Terraform!</h1></body></html>" | sudo tee /var/www/html/index.html

# Restart Apache to ensure everything is running
sudo systemctl restart httpd
