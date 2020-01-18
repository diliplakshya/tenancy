#!/bin/bash

make_dirs()
{
	PATH=$1

	[ ! -d $PATH ] && echo "Creating directory '"$PATH"'." && /bin/mkdir -p $PATH
}

remove_dirs()
{
	PATH=$1

	[ -d $PATH ] && echo "Deleting directory '"$PATH"'." && /bin/rm -rf $PATH
}

copy_files()
{
	SOURCE=$1
	DEST=$2

	[ ! -e $DEST ] && echo "Copying '"$SOURCE"' to '"$DEST"'." && /bin/cp $SOURCE $DEST
}
