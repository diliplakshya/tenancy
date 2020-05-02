#!/bin/bash

echo "Setting Server machine ..."
echo "**********************************"
sudo apt-get update
sudo apt-get -y install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql # Launch at reboot
sudo apt-get -y install mysql-workbench   # MySQL workbench

# root password of MySQL is 'local.'
# CREATE USER 'local' IDENTIFIED BY 'local.';
# GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' WITH GRANT OPTION;
# CREATE DATABASE tenancy;