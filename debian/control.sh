#!/bin/bash

source $VARIABLE
source $UTILS

# Create DEBIAN directory (/home/aspect/tenancy/DEBIAN)
make_dirs $PROJECT_DEBIAN && [ ! -f $PROJECT_CONTROL ] && echo "Creating control file '"$PROJECT_CONTROL"'." && \
/bin/cat >$PROJECT_CONTROL <<EOF
Package: Tenancy
Version: 0.1
Maintainer: Dilip Kumar, <diliplakshya@gmail.com>
Description: Tenancy Application
Architecture: all
Section: ControlServer
Priority: optional
EOF
/bin/chmod +x $PROJECT_CONTROL
