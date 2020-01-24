#!/bin/bash

. project/debian/variable.sh


echo "Creating debian preinst script '"$PROJECT_PRE_INSTALL"'." && \
/bin/cat >$PROJECT_PRE_INSTALL<<EOF
#!/bin/bash

echo "Running preinstall ..."
EOF
/bin/chmod +x $PROJECT_PRE_INSTALL