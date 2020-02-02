#!/bin/bash

echo "Setting Development machine ..."
echo "****Installing packages for development machine, please wait****"
echo "****Installing QT Creator****"
apt-get --yes --force-yes install build-essential
apt-get --yes --force-yes install qtcreator

echo "****Installing QT5****"
apt-get --yes --force-yes install qt5-default
echo "**********************************"
