#!/bin/bash

yum install httpd -y
sudo systemctl start httpd 
sudo systemctl enable httpd.service

"<h1> Successfully create instance using jenkins pipeliine </h1>" >> /var/www/html/index.html
chmod 777 /var/www/html/index.html


