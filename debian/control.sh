#!/bin/bash

. debian/variable.sh
. scripts/utils/utils.sh

# Create DEBIAN directory (/home/aspect/hotel_booking/DEBIAN)
make_dirs $PROJECT_DEBIAN && [ ! -f $PROJECT_CONTROL ] && echo "Creating control file '"$PROJECT_CONTROL"'." && \
/bin/cat >$PROJECT_CONTROL <<EOF
Package: HotelBooking
Version: 0.1
Maintainer: Dilip Kumar, <diliplakshya@gmail.com>
Description: Hotel Booking Application
Architecture: all
Section: ControlServer
Priority: optional
EOF
/bin/chmod +x $PROJECT_CONTROL
