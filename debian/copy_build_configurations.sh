#!/bin/bash

. debian/variable.sh
. scripts/utils/utils.sh

make_configuration_dir()
{
	# Create project bin directory (/home/aspect/hotel_booking/bin)
	make_dirs $PROJECT_BIN_DIR

	# Create project init directory (/home/aspect/hotel_booking/bin/init)
	make_dirs $PROJECT_INIT_DIR

	# Create module login directory (/home/aspect/hotel_booking/bin/login)
	make_dirs $PROJECT_LOGIN_DIR
}

copy_configuration_files()
{
	# Copy 'login' to '/home/aspect/hotel_booking/login/bin'
	copy_files $PROJECT_SRC_LOGIN_DIR/login $PROJECT_LOGIN_DIR/login

	# Copy 'init.sh' to '/home/aspect/hotel_booking/bin/init'
	copy_files $PROJECT_SCRIPT_INIT_DIR/init.sh $PROJECT_INIT_DIR/init.sh
}

make_configuration_dir
copy_configuration_files


