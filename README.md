#---------------------------------------------------------
# Author: NidoBr
# E-mail: < coqecoisa@gmail.com >
# Github: < https://github.com/NIDObr >
# Licença: BSD 3-Clause "New" or "Revised" License
# OPLTOOL:
#	Tool to assist logging
#---------------------------------------------------------

Initially we must load the package:
 package require logtool 1.0

How to use:
 logtool:log_mes < message > < name of the process you called > < tag (optional) > < log file (optional)>

Ex:

#!/usr/bin/env tclsh

package require logtool 1.0

logtool:log_mes "log example" "exemple.tcl" "ERRO" /var/log/syslog
