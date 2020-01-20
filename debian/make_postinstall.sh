#!/bin/bash

. debian/variable.sh


echo "Creating debian postinst script '"$PROJECT_POST_INSTALL"'." && \
/bin/cat >$PROJECT_POST_INSTALL<<EOF
#!/bin/bash

echo "Running postinstall ..."

sudo update-rc.d hotel_init defaults

EOF
/bin/chmod +x $PROJECT_POST_INSTALL