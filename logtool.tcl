#!/usr/bin/env tclsh

#---------------------------------------------------------
# Author: NidoBr
# E-mail: < coqecoisa@gmail.com >
# Github: < https://github.com/NIDObr >
# Versão: Alpha 13/02/2021
# Licença: BSD 3-Clause "New" or "Revised" License
# OPLTOOL:
#	Tool to assist logging
#---------------------------------------------------------

# Defines the namespace
namespace eval logtool {} {
	# Default log file
	set default_path "/var/log/logtool/logtool.log"
}

#-------------------------------------------------Functions

# Log messages
proc logtool:log_mes {  menssage name_process { tag "INFO" } { log_path "default" } } {
	# Checks if a file has been defined for logging by the user
	if { $log_path == "default" } {
		set log_path $::logtool::default_path
	}
	# If the directory does not exist then create
	if { ! [ file exist [ file dirname $log_path ] ] } {
		file mkdir [ file dirname $log_path ]
	}
	# Creates the channel for the log
	set log_file [ open $log_path a ]
	# Sets the time for the log
	set dat_time [ clock format [ clock seconds ] -format {%b %d %H:%M:%S} ]
	# Log message
	puts $log_file "$dat_time [ info hostname ] $name_process: $menssage $tag"
	# Close log channel
	close $log_file
}

#-------------------------------------------------Main

package provide logtool 1.0
