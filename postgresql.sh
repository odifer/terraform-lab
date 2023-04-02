#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras enable postgresql14
sudo yum install postgresql-server -y
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql 
sudo useradd Odile
sudo groupadd manager
sudo install docker -y
sudo systemctl start docker
sudo docker run -d -p 8000:80 httpd
