#!/bin/bash

echo "Setting Environment Variables ..."
echo "**********************************"

export DEBIAN_PATH="debian"
export VARIABLE=$DEBIAN_PATH/"variable.sh"
export UTILS="scripts/utils/utils.sh"

export MAKE_CONTROL=$DEBIAN_PATH/"control.sh"
export MAKE_PREINSTALL=$DEBIAN_PATH/"make_preinstall.sh"
export COPY_SYS_CONF=$DEBIAN_PATH/"copy_system_configurations.sh"
export COPY_BUILD_CONF=$DEBIAN_PATH/"copy_build_configurations.sh"
export MAKE_POSTINSTALL=$DEBIAN_PATH/"make_postinstall.sh"