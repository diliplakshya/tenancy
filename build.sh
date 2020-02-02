#!/bin/bash

source setenv.sh
source compile.sh

if [ $? = 0 ]; then
    source $DEBIAN_PATH/make_debian.sh
else
    echo "Compilation failed. Skipping creating debian package"
fi