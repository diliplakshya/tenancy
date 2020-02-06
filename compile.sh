#!/bin/bash

echo "Compiling ..."
echo "**********************************"

ARG=$1

SRC_DIRS="\
    src/cpp/lib/CppToPython/src \
    src/cpp/src/login
    
"

clean()
{
    for dir in $SRC_DIRS
    do
        if test -d $dir; then
            do_it "make clean" $dir "Cleaning"
        fi
    done
}

compiling()
{
    for dir in $SRC_DIRS
    do
        if test -d $dir; then
            do_it "make" $dir "Compiling"
        fi
    done   
}

do_it()
{
    action=$1
    path=$2
    comment=$3

    echo "$comment for $path"
    $action -C $path
}

if [ -z "$ARG" ]; then
    compiling
elif [ "$ARG"=="-C" ]; then
    clean
else
    echo "Wrong argument"
fi