#!/bin/bash

. debian/variable.sh
. scripts/utils/utils.sh

# Remove existing debian package directory if exists
remove_dirs $PACKAGE_DIR

# Creating debian package directory if does not exists
make_dirs $PACKAGE_DIR

# Create debian build deployement root directory (/home/aspect)
make_dirs $DEPLOY_ROOT_DIR

# Create debian build project directory (/home/aspect/hotel_booking)
make_dirs $PROJECT_DIR

. debian/control.sh

. debian/make_preinstall.sh

. debian/copy_system_configurations.sh

. debian/copy_build_configurations.sh

. debian/make_postinstall.sh

# Create Debian package
echo "Creating Debian package"
/usr/bin/sudo dpkg-deb --build $DEBIAN_PACKAGE


# Now, debian package is created. So remove the debian build directory if exists
remove_dirs $DEBIAN_PACKAGE
