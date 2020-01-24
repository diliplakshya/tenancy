#!/bin/bash

echo "Compiling ..."
echo "**********************************"

make clean -C src/cpp/src/login
make -C src/cpp/src/login
