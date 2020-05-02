#!/bin/bash

start()
{
	echo "Start is called *****"
	/home/local/tenancy/bin/login/login
	# /usr/bin/touch /home/local/tenancy/bin/init/tempstart.txt
}

stop()
{
	echo "Stop is called *****"
	# /home/local/tenancy/bin/login/login
	# /usr/bin/touch /home/local/tenancy/bin/init/tempstop.txt
}

case "$1" in
	start) start;;
	stop) stop;;
	restart) stop; start;;
	*) "Usage: $0 {start | stop | restart}";;
esac

exit 0

