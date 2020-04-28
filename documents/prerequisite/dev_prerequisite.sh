#!/bin/bash

echo "Setting Development machine ..."
echo "**** Installing packages for development machine, please wait ****"

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install python3.7
sudo apt-get -y install python3.7-dev