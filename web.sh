#!/bin/bash
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo rm -rf /usr/share/nginx/html/*
curl -o /tmp/web.zip https://roboshop-builds.s3.amazonaws.com/web.zip
cd /usr/share/nginx/html
unzip /tmp/web.zip
cp /home/centos/roboshop-shell/roboshop.conf /etc/nginx/default.d/roboshop.conf 
systemctl restart nginx 
