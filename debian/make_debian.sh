#!/bin/bash

echo "Building debian package... please wait..."
echo

source $VARIABLE
source $UTILS

# Remove existing debian package directory if exists
remove_dirs $PACKAGE_DIR

# Creating debian package directory if does not exists
make_dirs $PACKAGE_DIR

# Create debian build deployement root directory (/home/local)
make_dirs $DEPLOY_ROOT_DIR

# Create debian build project directory (/home/local/tenancy)
make_dirs $PROJECT_DIR

source $MAKE_CONTROL
source $MAKE_PREINSTALL
source $COPY_SYS_CONF
source $COPY_BUILD_CONF
source $MAKE_POSTINSTALL

# Create Debian package
echo "Creating Debian package"
/usr/bin/sudo dpkg-deb --build $DEBIAN_PACKAGE

# Now, debian package is created. So remove the debian build directory if exists
remove_dirs $DEBIAN_PACKAGE

echo "**********************************"