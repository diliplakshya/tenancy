#!/bin/bash

source $VARIABLE
source $UTILS

# Create etc init.d directory (/etc/init.d)
make_dirs $DEPLOY_ETC_INIT_D_DIR

# Copy 'tenancy' to '/etc/init.d/tenancy'
copy_files $PROJECT_START_UP_DIR/tenancy.sh $DEPLOY_ETC_INIT_D_DIR/tenancy && /bin/chmod +x $DEPLOY_ETC_INIT_D_DIR/tenancy

# Create etc init directory (/etc/init)
make_dirs $DEPLOY_ETC_INIT_DIR

# This is optional
# Copy 'tenancy.conf' to '/etc/init/tenancy.conf'
# copy_files $PROJECT_START_UP_DIR/tenancy.conf $DEPLOY_ETC_INIT_DIR/tenancy.conf
