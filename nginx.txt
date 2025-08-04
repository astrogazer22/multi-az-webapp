#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo docker run -d -p 80:80 nginx

echo $STRING

