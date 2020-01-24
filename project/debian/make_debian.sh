#!/bin/bash

echo "Building debian package... please wait..."
echo

. project/debian/variable.sh
. scripts/utils/utils.sh

# Remove existing debian package directory if exists
remove_dirs $PACKAGE_DIR

# Creating debian package directory if does not exists
make_dirs $PACKAGE_DIR

# Create debian build deployement root directory (/home/aspect)
make_dirs $DEPLOY_ROOT_DIR

# Create debian build project directory (/home/aspect/hotel_booking)
make_dirs $PROJECT_DIR

. project/debian/control.sh

. project/debian/make_preinstall.sh

. project/debian/copy_system_configurations.sh

. project/debian/copy_build_configurations.sh

. project/debian/make_postinstall.sh

# Create Debian package
echo "Creating Debian package"
/usr/bin/sudo dpkg-deb --build $DEBIAN_PACKAGE

# Now, debian package is created. So remove the debian build directory if exists
remove_dirs $DEBIAN_PACKAGE

echo "**********************************"