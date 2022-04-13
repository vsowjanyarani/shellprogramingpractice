#!/bin/bash
echo "create user"
read username
sudo useradd -m -c "sowji is the user" $username
sudo passwd $username
