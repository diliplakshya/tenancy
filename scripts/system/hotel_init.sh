#!/bin/bash

### BEGIN INIT INFO
# Provides:          hotel_init
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start hotel booking script at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

bash /home/aspect/hotel_booking/bin/init/init.sh start $*
