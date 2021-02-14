# LOGTOOL:
 Tool to assist logging

Initially we must load the package:
 package require logtool 1.0

How to use:
 logtool:log_mes < message > < name of the process you called > < tag (optional) > < log file (optional)>

Ex:

#!/usr/bin/env tclsh

package require logtool 1.0

logtool:log_mes "log example" "exemple.tcl" "ERRO" /var/log/syslog
