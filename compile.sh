#!/bin/bash

echo "Compiling ..."
echo "**********************************"

ARG=$1

get_path()
{
    path="src/cpp/src/login"
    echo $path
}

clean()
{
    echo "Cleaning files..."
    VALUE=$( get_path )
    make clean -C $VALUE
}

compiling()
{
    echo "Compiling source code ..."
    VALUE=$( get_path )
    make -C $VALUE    
}

if [ -z "$ARG" ]; then
    compiling
elif [ "$ARG"=="-C" ]; then
    clean
else
    echo "Wrong argument"
fi