#!/bin/bash

. debian/variable.sh
. scripts/utils/utils.sh

# Create etc init.d directory (/etc/init.d)
make_dirs $DEPLOY_ETC_INIT_D_DIR

# Copy 'hotel_init' to '/etc/init.d/hotel_init'
copy_files $PROJECT_START_UP_DIR/hotel_init.sh $DEPLOY_ETC_INIT_D_DIR/hotel_init && chmod +x $DEPLOY_ETC_INIT_D_DIR/hotel_init

# Create etc init directory (/etc/init)
make_dirs $DEPLOY_ETC_INIT_DIR

# Copy 'hotel_init.conf' to '/etc/init/hotel_init.conf'
copy_files $PROJECT_START_UP_DIR/hotel_init.conf $DEPLOY_ETC_INIT_DIR/hotel_init.conf
