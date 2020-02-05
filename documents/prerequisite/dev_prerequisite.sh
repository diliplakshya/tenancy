#!/bin/bash

echo "Setting Development machine ..."
echo "****Installing packages for development machine, please wait****"
echo "****Installing QT Creator****"
apt-get --yes --force-yes install build-essential
apt-get --yes --force-yes install qtcreator

echo "****Installing QT5****"
apt-get --yes --force-yes install qt5-default
echo "**********************************"

echo "****Installing Python Dev Package****"
# This is to get Python.h and Python C API (embedding Python into C++)
apt-get --yes --force-yes install python3.5-dev
echo "**********************************"
