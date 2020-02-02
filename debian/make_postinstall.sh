#!/bin/bash

source $VARIABLE


echo "Creating debian postinst script '"$PROJECT_POST_INSTALL"'." && \
/bin/cat >$PROJECT_POST_INSTALL<<EOF
#!/bin/bash

echo "Running postinstall ..."

# Update library search path .eg. for etc/ld.so.conf.d/libtenancy.conf
ldconfig

sudo update-rc.d tenancy defaults

EOF
/bin/chmod +x $PROJECT_POST_INSTALL