#!/bin/bash
sudo apt update
sudo apt install redis_server
sudo nano /etc/redis/redis.conf
#change supervised value no too systemd and save the file
sudo service restart redis

