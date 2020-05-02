# tenancy
Rental Application
---------------------------------------------------------------------------------------------------------------------
System Requirement;-

Ubuntu 16,04 LTSx64
---------------------------------------------------------------------------------------------------------------------
Prerequisites for Development machine;-

To prepare the development machine to compile and create debian package, run following script;-

bash documents/prerequisite/dev_prerequisite.sh
---------------------------------------------------------------------------------------------------------------------
To compile and create package do following;-

bash build.sh
---------------------------------------------------------------------------------------------------------------------
Prerequisites for Release/Deployment machine;-

To prepare the release machine, to be able to install debian package, do following in you release machine;-

copy documents/prerequisite/release_prerequisite.sh to your release machine and execute your script.
Post this reboot your machine
---------------------------------------------------------------------------------------------------------------------
Prerequisites for Server/Database machine;-

To prepare the server machine, to be able to run database, do following in you server machine;-

copy documents/prerequisite/server_prerequisite.sh to your server machine and execute your script.
Post this reboot your machine
---------------------------------------------------------------------------------------------------------------------
To install Debian package in Release/Deployment machine;-

To install debian package in your release machine do following;-

copy package/<name>.deb to your release machine under /home/local and execute following command.

sudo dpkg -i <name>.deb
---------------------------------------------------------------------------------------------------------------------
# root password of MySQL is 'local.'
# CREATE USER 'local' IDENTIFIED BY 'local.';
# GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' WITH GRANT OPTION;
# CREATE DATABASE tenancy;
---------------------------------------------------------------------------------------------------------------------
