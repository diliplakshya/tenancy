#!/bin/bash

. debian/variable.sh
. scripts/utils/utils.sh

# Create etc init.d directory (/etc/init.d)
make_dirs $DEPLOY_ETC_INIT_D_DIR

# Copy 'hotel_init' to '/etc/init.d/start_up.sh'
copy_files $PROJECT_START_UP_DIR/hotel_init $DEPLOY_ETC_INIT_D_DIR/hotel_init
