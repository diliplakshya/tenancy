#!/bin/bash

start()
{
	echo "Start is called *****"
	# /home/aspect/hotel_booking/bin/login/login
	/usr/bin/touch /home/aspect/hotel_booking/bin/init/tempstart.txt
}

stop()
{
	echo "Stop is called *****"
	# /home/aspect/hotel_booking/bin/login/login
	/usr/bin/touch /home/aspect/hotel_booking/bin/init/tempstop.txt
}

case "$1" in
	start) start;;
	stop) stop;;
	restart) stop; start;;
	*) "Usage: $0 {start | stop | restart}";;
esac

exit 0

