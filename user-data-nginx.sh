#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install nginx
sudo service nginx start
echo "Welcome to Grandpa's Whiskey" | sudo tee /var/www/html/index.html
echo "Welcome to Grandpa's Whiskey" | sudo tee /usr/share/nginx/html/index.html
hostname | sudo tee /var/www/html/index.html 
hostname | sudo tee /usr/share/nginx/html/index.html

# Change Nginx configuration to get real user’s IP address in Nginx log files-
echo "set_real_ip_from  ${module.vpc_module.vpc_cidr};" >> /etc/nginx/conf.d/default.conf; echo "real_ip_header    X-Forwarded-For;" >> /etc/nginx/conf.d/default.conf

service nginx restart