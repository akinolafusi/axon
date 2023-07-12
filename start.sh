#!/bin/bash

mkdir data1 && mkdir data2 && mkdir data3
mkdir log1 && mkdir log2 && mkdir log3
mkdir plugins1 && mkdir plugins2 && mkdir plugins3
mkdir events1 && mkdir events2 && mkdir events3

sudo amazon-linux-extras install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

