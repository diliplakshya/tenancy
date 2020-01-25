# tenancy
Rental Application
---------------------------------------------------------------------------------------------------------------------
System Requirement;-

Ubuntu 16,04 LTSx64
---------------------------------------------------------------------------------------------------------------------
Prerequisites for Development machine;-

To prepare the development machine to compile and create debian package, run following script;-

bash prerequisite/dev_prerequisite.sh
---------------------------------------------------------------------------------------------------------------------
To compile and create package do following;-

bash build.sh
---------------------------------------------------------------------------------------------------------------------
Prerequisites for Release/Deployment machine;-

To prepare the release machine, to be able to install debian package, do following in you release machine;-

copy prerequisite/release_prerequisite.sh to your release machine and execute your script.
Post this reboot your machine
---------------------------------------------------------------------------------------------------------------------
To install Debian package in Release/Deployment machine;-

To install debian package in your release machine do following;-

copy package/<name>.deb to your release machine under /home/local and execute following command.

sudo dpkg -i <name>.deb
---------------------------------------------------------------------------------------------------------------------