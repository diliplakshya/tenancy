#!/bin/bash

source $VARIABLE
source $UTILS

make_configuration_dir()
{
	# Create project bin directory (/home/local/tenancy/bin)
	make_dirs $PROJECT_BIN_DIR

	# Create project init directory (/home/local/tenancy/bin/init)
	make_dirs $PROJECT_INIT_DIR

	# Create module login directory (/home/local/tenancy/bin/login)
	make_dirs $PROJECT_LOGIN_DIR
}

copy_configuration_files()
{
	# Copy 'login' to '/home/local/tenancy/login/bin'
	copy_files $PROJECT_LOGIN_MODULE_DIR/login $PROJECT_LOGIN_DIR/login

	# Copy 'init.sh' to '/home/local/tenancy/bin/init'
	copy_files $PROJECT_SCRIPT_INIT_DIR/init.sh $PROJECT_INIT_DIR/init.sh
}

make_configuration_dir
copy_configuration_files


