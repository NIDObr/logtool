#!/usr/bin/env bash

# ROOT only
[[ $UID == 0 ]] || {
	printf '%s\n' "ROOT only!"
	exit
}
# Create the directories
mkdir /usr/share/tcltk/logtool/
mkdir /var/log/logtool/
# Copy the necessary files to the p directories
cp *.tcl /usr/share/tcltk/logtool/
cp *.md /usr/share/tcltk/logtool/
# Make it executable
chmod +x /usr/share/tcltk/logtool.tcl
chmod -R 777 /var/log/logtool
