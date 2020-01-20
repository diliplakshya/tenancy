#!/bin/bash

echo "Creating debian preinst script '"$PROJECT_PRE_INSTALL"'." && \
/bin/at >$PROJECT_PRE_INSTALL<<EOF
#!/bin/bash

echo "Preinstall script"
EOF
/bin/chmod +x $PROJECT_PRE_INSTALL