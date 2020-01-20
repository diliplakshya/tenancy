#!/bin/bash

echo "Creating debian postinst script '"$PROJECT_POST_INSTALL"'." && \
/bin/cat >$PROJECT_POST_INSTALL<<EOF
#!/bin/bash

# Soft link for start up script
# link /lib/init/upstart-job /etc/init.d/hotel_init
EOF
/bin/chmod +x $PROJECT_POST_INSTALL