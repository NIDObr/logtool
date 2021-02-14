#!/usr/bin/env bash

# ROOT only
[[ $UID == 0 ]] || {
	printf '%s\n' "ROOT only!"
	exit
}
# Copy the necessary files to the p directories
cp *.tcl /usr/share/tcltk/
cp *.md /usr/share/tcltk/
# Make it executable
chmod +x /usr/share/tcltk/logtool.tcl
